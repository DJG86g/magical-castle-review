# require "rails_helper"
#
# feature "visitors can add rides" do
#   scenario "visitor adds new ride successfully" do
#
#     visit new_ride_path
#     expect(page).to have_content "New Ride Form"
#
#     fill_in 'Name', with: "thunder mountain"
#     fill_in 'Description', with: "bring me all the dole whip!!!"
#
#     click_button "Add Ride"
#
#     expect(page).to have_content "Ride added successfully"
#     expect(page).to have_content "thunder mountain"
#     expect(page).to have_content "bring me all the dole whip!!!"
#   end
#
#   scenario "visitor does not provide proper information for a ride" do
#     visit new_ride_path
#
#     click_button "Add Ride"
#     expect(page).to have_content "Name can't be blank"
#     expect(page).to have_content "Description can't be blank"
#
#   end
# end
