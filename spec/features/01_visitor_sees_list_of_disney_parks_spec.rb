require 'rails_helper'

# [] Visiting the `/parks` path should contain a list of disney parks.
# [] Visiting the `/parks/1` path should show the park details for a park with the ID of 1.
# [] Visiting the root path should display a list of all parks.

feature "visitor sees a list of Disney parks" do
  scenario "sees a list of disney parks and links to park show page" do
    magic_kingdom = Park.create(name: 'Magic Kingdom', address: '1180 Seven Seas Dr', city: 'Lake Buena Vista', state: 'FL', zip: '32830')
    animal_kingdom = Park.create(name: "Animal Kingdom", address: "2901 Osceola Pkwy", city: "Orlando", state: "FL", zip: "32830")

    visit parks_path

    expect(page).to have_content "Magic Kingdom"
    expect(page).to have_link "Animal Kingdom"

  end
  scenario "clicks link and is taken to show page for given park" do
    magic_kingdom = Park.create(name: 'Magic Kingdom', address: '1180 Seven Seas Dr', city: 'Lake Buena Vista', state: 'FL', zip: '32830')

    visit root_path

    click_link "Magic Kingdom"

    expect(page).to have_content magic_kingdom.name
    expect(page).to have_content magic_kingdom.address
    expect(page).to have_content magic_kingdom.city
    expect(page).to have_content magic_kingdom.state
    expect(page).to have_content magic_kingdom.zip
    expect(page).to have_content magic_kingdom.description
  end
end
