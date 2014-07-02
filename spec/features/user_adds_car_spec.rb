
require "rails_helper"

feature "User adds new car info" do
  scenario "fill out new car form" do
    car = FactoryGirl.build(:car)

    visit new_car_path
    select car.manufacturer.name, from: "car[manufacturer_id]"
    fill_in "Color", with: car.color
    fill_in "Year", with: car.year
    fill_in "Mileage", with: car.mileage
    click_button "Submit"

    expect(page).to have_content("Success!")
  end

  scenario "User does not fill out fields" do
    visit new_car_path
    click_button "Submit"

    expect(page).to have_content("Your car couldn't be saved.")
  end
end
