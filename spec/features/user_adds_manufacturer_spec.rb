
require "rails_helper"

feature "User adds new manufacturer" do

  scenario "fill out new manufacturer form" do

    manufacturer= FactoryGirl.create(:manufacturer)

    visit new_manufacturer_path

    fill_in "Name", with: manufacturer.name
    find_field('Country').value

    click_button "Submit"


    expect(page).to have_content("Success!")


  end

  scenario "User does not fill out fields" do

    visit new_manufacturer_path


    click_button "Submit"


    expect(page).to have_content("Your manufacturer couldn't be saved.")

  end

end
