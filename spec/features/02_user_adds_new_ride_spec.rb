require "rails_helper"

# [] A ride must have a name, address, city, state, and zip code. It can optionally have a description.
# [] Visiting the `/rides/new` path should display a form for creating a new ride.
# [] When adding a new ride, if I fill out the form correctly, I should see the page for the newly created ride.
# [] When adding a new ride, if I fill out the form incorrectly and submit the form, I should see the form and be displayed the validation errors.


feature "visitors can add rides" do
  scenario "visitor adds new ride successfully" do

    park = Park.create(name: "Magic Kingdom",address: "1180 Seven Seas Dr",city: "Lake Buena Vista",state: "FL",zip: 32830 ,description: "The park is represented by Cinderella Castle, inspired by the fairy tale castle seen in the 1950 film.")

    visit new_park_ride_path(park)
    save_and_open_page
    expect(page).to have_content "New Ride Form"

    fill_in 'Name', with: "Splash mountain"
    fill_in 'Description', with: "one of walts magic mountains"

    click_button "Add Ride"
  end

  scenario "visitor does not provide proper information for a ride" do
    park = Park.create(name: "Magic Kingdom",address: "1180 Seven Seas Dr",city: "Lake Buena Vista",state: "FL",zip: 32830 ,description: "The park is represented by Cinderella Castle, inspired by the fairy tale castle seen in the 1950 film.")
    visit new_park_ride_path(park)

    click_button "Add Ride"
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Description can't be blank"
  end
end
