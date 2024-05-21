require "rails_helper"

RSpec.feature "User Sign In", :type => :feature do
  scenario "When User Log In" do
    visit "/users/sign_in"
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
  end
end
RSpec.feature " Sign Up", :type => :feature do
  scenario "When User Sing Un" do 
    visit "users/sign_up" 
      


end
