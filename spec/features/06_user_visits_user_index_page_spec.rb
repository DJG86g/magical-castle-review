require 'rails_helper'

feature "user sees a list of users" do
  scenario "sees a list of users" do
    princeofdarkness = User.create!(username: "Princeofdarkness", first_name: "Ozzy", last_name: "Osbourne", email: "ozzy@blacksabbath.com", date_of_birth: Date.new(12-3-1948), password: "password2")
    kpilk = User.create!(username: "Kpilk", first_name: "Karl", last_name: "Pilkington", email: "karl.pilkington@xfm.co.uk", date_of_birth: Date.new(9-23-1972), password: "password4")

  visit users_path(@user)
  expect(page).to have_content "Princeofdarkness"
  expect(page).to have_link "Kpilk"
 end

 scenario "clicks link and is taken to show page for given user" do
  kpilk = User.create!(username: "Kpilk", first_name: "Karl", last_name: "Pilkington", email: "karl.pilkington@xfm.co.uk", date_of_birth: Date.new(9-23-1972), password: "password4")
 visit users_path(@users)


   click_link "Kpilk"

   expect(page).to have_content kpilk.username
   expect(page).to have_content kpilk.first_name
   expect(page).to have_content kpilk.last_name
   expect(page).to have_content kpilk.email
 end
end
