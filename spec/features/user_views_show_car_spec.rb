require 'rails_helper'

feature 'user visits individual car page' do
  scenario "user sees information on car" do
    car = FactoryGirl.create(:car)

    visit "/cars/#{car.id}"

    expect(page).to have_content "GM"
    expect(page).to have_content "Blue"
    expect(page).to have_content 1950
    expect(page).to have_content 100,000
  end
end
