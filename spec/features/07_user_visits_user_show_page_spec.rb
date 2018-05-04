require 'rails_helper'

feature "visitor sees a user" do
  scenario "sees a user" do

    princeofdarkness = User.create!(username: "Princeofdarkness", first_name: "Ozzy", last_name: "Osbourne", email: "ozzy@blacksabbath.com", date_of_birth: Date.new(1948-12-3), password: "password2")
    kpilk = User.create!(username: "Kpilk", first_name: "Karl", last_name: "Pilkington", email: "karl.pilkington@xfm.co.uk", date_of_birth: Date.new(1972-9-23), password: "password4")

    visit user_path(kpilk)
    expect(page).to have_content "Kpilk"
    expect(page).to have_link "Back to users"
  end
end
