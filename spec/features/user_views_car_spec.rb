require 'rails_helper'

feature 'user visits car index' do
  scenario "user sees all the cars" do
    car = FactoryGirl.create(:car)

    visit '/cars'

    expect(page).to have_content car.manufacturer.name
    expect(page).to have_content car.color
    expect(page).to have_content car.year
    expect(page).to have_content car.mileage
  end
end
