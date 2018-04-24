require 'rails_helper'

feature "visitors can add reviews for rides" do
  scenario "adds a review for a ride successfully" do
    space_mountain = Ride.create(name: 'Space mountain', description: "best of the mountains")

    visit ride_path(space_mountain)

    click_link "Add a Review"

    expect(page).to have_content "Review Form for space mountain"

    fill_in "Rating", with: 5
    fill_in "Review", with: "This ride is amazing!"
    click_button "Add Review"

    expect(page).to have_content "Review added successfully"
    expect(page).to have_content space_mountain.name
    expect(page).to have_content 5
    expect(page).to have_content "This ride is amazing!"
  end

  scenario "adds a review for a ride unsuccessfully" do
    space_mountain = Ride.create(name: 'Space mountain', description: "best of the mountains")

    visit ride_path(space_mountain)

    click_link "Add a Review"
    expect(page).to have_content "Review Form for space mountain"

    click_button "Add Review"

    expect(page).to have_content "Body can't be blank"
    expect(page).to have_content "Rating can't be blank"
  end
end
