require 'rails_helper'

# [] Visiting the `/parks` path should contain a list of parks.
# [] Visiting the `/parks/4` path should show the park details for a park with the ID of 4.
# [] Visiting the root path should display a list of all parks.

feature "visitor sees a list of parks" do
  scenario "sees a list of parks and link for new park" do
    magic_kingdom = Park.create(name: "Magic Kingdom",address: "1180 Seven Seas Dr",city: "Lake Buena Vista",state: "FL",zip: 32830 ,description: "The park is represented by Cinderella Castle, inspired by the fairy tale castle seen in the 1950 film.")
    epcot = Park.create(name: "Epcot",address: "200 Epcot Center Dr",city: "Orlando",state: "FL",zip: 32821 ,description: "A mixture of rides and world fare.")

    visit parks_path
    expect(page).to have_content "Magic Kingdom"
    expect(page).to have_link "Epcot"
  end
  scenario "clicks link and is taken to show page for given park" do
    epcot = Park.create(name: "Epcot",address: "200 Epcot Center Dr",city: "Orlando",state: "FL",zip: 32821 ,description: "A mixture of rides and world fare.")
    visit parks_path


    click_link "Epcot"

    expect(page).to have_content epcot.name
    expect(page).to have_content epcot.address
    expect(page).to have_content epcot.city
    expect(page).to have_content epcot.state
    expect(page).to have_content epcot.zip
    expect(page).to have_content epcot.description
  end
end
