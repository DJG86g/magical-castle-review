# require 'rails_helper'
#
# feature "user sees list of reviews on ride page" do
#   scenario "sees reviews for specific ride" do
#     space_mountain = Ride.create(name: 'Space mountain')
#     review_for_space = Review.create(rating: 4, body: "This mountain is amazing!!", ride: space_mountain)
#
#     visit ride_path(space_mountain)
#
#     expect(page).to have_content space_mountain.name
#     save_and_open_page
#     expect(page).to have_content review_for_space.rating
#     expect(page).to have_content review_for_space.body
#     expect(page).to have_content review_for_space.created_at.strftime("%B %d %Y")
#   end
#
#   scenario "does not see other reviews for other rides" do
#     space_mountain = Ride.create(name: 'Space mountain')
#     thunder_mountain = Ride.create(name: "Thunder mountain")
#     review_for_space = Review.create(rating: 4, body: "This mountain is amazing!!", ride: space_mountain)
#     review_for_thunder = Review.create(rating: 5, body: "so good", ride: thunder_mountain)
#
#     visit ride_path(thunder_mountain)
#
#     expect(page).to have_content thunder_mountain.name
#     expect(page).to have_content review_for_thunder.body
#
#     expect(page).not_to have_content space_mountain.name
#     expect(page).not_to have_content review_for_space.rating
#     expect(page).not_to have_content review_for_space.body
#   end
# end
