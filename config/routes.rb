Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root 'posts#index'
  get 'admins/index'

  namespace :admin do
    resources :roles
    resources :users
    root to: "roles#index"
  end

  devise_for :users
  resources :posts do
    member do
      put :reject_post
      put :approve_post
      put :cantact_request
      get :send_mail
      get :response_mail
    end
  end
  # resources :users

  get '/about', to: "posts#about" 
  get '/contact', to: "posts#contact"
  get '/roles', to: "admins#roles"
  get '/status', to: "posts#status"

  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  
end
