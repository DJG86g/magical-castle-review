require 'rails_helper'

# [] A ride can have many reviews. Each review must contain the following:
#   [] A rating
#   [] A body
#   [] A timestamp for when it was created
# [] Visiting the `/rides/1` path should also include all reviews for a ride with ID = 1.

feature "visitor sees list of reviews on ride page" do
  scenario "sees reviews for specific ride" do
    park = Park.create(name: "Magic Kingdom",address: "1180 Seven Seas Dr",city: "Lake Buena Vista",state: "FL",zip: 32830 ,description: "The park is represented by Cinderella Castle, inspired by the fairy tale castle seen in the 1950 film.")
    ride = Ride.create(name: 'Thunder Mountain', description: 'Race through a haunted gold-mining town aboard a rollicking runaway mine train.', park: park)
    review = Review.create(rating: 4, body: "This ride was my favorite part of the whole vacation!  I rode it three times in a row!", ride: ride)

    visit park_ride_path(park, ride)
    save_and_open_page
    expect(page).to have_content ride.name
    expect(page).to have_content review.rating
    expect(page).to have_content review.body
    expect(page).to have_content review.created_at.strftime("%B %d %Y")
  end

  scenario "does not see other reviews for other restaurants" do
    thunder_mountain = Ride.create(name: 'Thunder Mountain', description: 'Race through a haunted gold-mining town aboard a rollicking runaway mine train.')
    space_mountain = Ride.create(name: 'Space Mountain', description: 'Race through space...and uh...a mountain in space...?')
    review_for_thunder_mountain = Review.create(rating: 4, body: "This ride was my favorite part of the whole vacation!  I rode it three times in a row!", ride: thunder_mountain)
    review_for_space_mountain = Review.create(rating: 1, body: "It was hard to breathe without an atmoshpere.", ride: space_mountain)

    visit ride_path(space_mountain)

    expect(page).to have_content space_mountain.name
    expect(page).to have_content review_for_space_mountain.body

    expect(page).not_to have_content thunder_mountain.name
    expect(page).not_to have_content review_for_thunder_mountain.rating
    expect(page).not_to have_content review_for_thunder_mountain.body
  end
end
