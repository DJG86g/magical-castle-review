require 'rails_helper'
require 'pry'

feature "visitor sees a ride" do
  scenario "sees a ride and link for new park" do

    park = Park.create!(name: "Magic Kingdom",address: "1180 Seven Seas Dr",city: "Lake Buena Vista",state: "FL",zip: 32830 ,description: "The park is represented by Cinderella Castle, inspired by the fairy tale castle seen in the 1950 film.")
    ride = Ride.create!(name: "Big thunder mountain",description: "one of walts magical tours", park: park)

    visit park_ride_path(park, ride)
    expect(page).to have_content "Big thunder mountain"
    expect(page).to have_link "Back to rides"
  end
end
