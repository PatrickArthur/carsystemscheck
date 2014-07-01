
require "rails_helper"

feature "User adds new car info" do

  scenario "fill out new car form" do

    car = FactoryGirl.create(:car)

    visit new_car_path

    fill_in "Manufacturer", with: car.manufacturer
    fill_in "Color", with: car.color
    fill_in "Year", with: car.year
    fill_in "Mileage", with: car.mileage
    click_button "Submit"


    expect(page).to have_content("Success!")


  end

  scenario "User does not fill out fields" do

    visit new_car_path


    click_button "Submit"


    expect(page).to have_content("Your Car couldn't be saved")

  end

end
