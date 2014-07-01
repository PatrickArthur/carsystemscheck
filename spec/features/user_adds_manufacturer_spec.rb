
require "rails_helper"

feature "User adds new manufacturer" do

  scenario "fill out new manufacturer form" do

    car = FactoryGirl.create(:manufacturer)

    visit new_manufacturer_path

    fill_in "Name", with: manufacturer.name
    fill_in "Country", with: manufacturer.Country
    click_button "Add Manufacturer"

    expect(page).to have_content("Success!")


  end

  scenario "User does not fill out fields" do

    visit new_manufacturer_path


    click_button "Add manufacturer"


    expect(page).to have_content("Your manufacturer couldn't be saved.")

  end

end
