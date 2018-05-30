require "rails_helper"

feature "profile photo" do
  scenario "user uploads a profile photo" do
    visit root_path
    click_link "Sign Up"
    save_and_open_page
    fill_in 'username', with: 'Mickey1955'
    fill_in 'First name', with: 'Walt'
    fill_in 'Last name', with: 'Disney'
    fill_in 'Date of birth', with: "1922-2-23"
    fill_in "Email", with: "ash@s-mart.com"
    fill_in "Password", with: "boomstick!3vilisd3ad"
    fill_in "Password confirmation", with: "boomstick!3vilisd3ad"
    attach_file :user_profile_photo, "#{Rails.root}/spec/support/images/photo.jpg"
    click_button "Sign up"


  end
end
