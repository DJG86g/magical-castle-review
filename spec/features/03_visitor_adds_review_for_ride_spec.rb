require 'rails_helper'

# [] Visiting the `/rides/1/reviews/new` should display a form for creating a new review for a ride with ID = 1.
# [] A review should validate must contain the following:
#   [] A review body of text
#   [] A review rating of text
#   [] The relationship to a ride

feature "visitors can add reviews for rides" do
  scenario "adds a review for a ride successfully" do
    thunder_mountain = Ride.create(name: 'Thunder Mountain', description: 'Race through a haunted gold-mining town aboard a rollicking runaway mine train.')

    visit ride_path(thunder_mountain)

    click_link "Add a Review"

    expect(page).to have_content "Review Form for Thunder Mountain"

    fill_in "Title", with: "Thunder Mountain makes me happy!"
    fill_in "Rating", with: 5
    fill_in "Review", with: "This ride was my favorite part of the whole vacation!  I rode it three times in a row!"
    click_button "Add Review"

    expect(page).to have_content "Review added successfully"
    expect(page).to have_content thunder_mountain.name
    expect(page).to have_content "Thunder Mountain makes me happy!"
    expect(page).to have_content 5
    expect(page).to have_content "This ride was my favorite part of the whole vacation!  I rode it three times in a row!"
  end

  scenario "adds a review for a restaurant unsuccessfully" do
    thunder_mountain = Ride.create(name: 'Thunder Mountain', description: 'Race through a haunted gold-mining town aboard a rollicking runaway mine train.')

    visit ride_path(thunder_mountain)

    click_link "Add a Review"
    expect(page).to have_content "Review Form for Thunder Mountain"

    click_button "Add Review"

    expect(page).to have_content "Body can't be blank"
    expect(page).to have_content "Rating can't be blank"
    expect(page).to have_content "Title can't be blank"
  end
end
