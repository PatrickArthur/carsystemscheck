require 'rails_helper'

feature 'user visits car index' do

  scenario "user sees all the cars" do

    car = FactoryGirl.create(:car)

    visit '/cars'

    expect(page).to have_content "GM"
    expect(page).to have_content "Blue"
    expect(page).to have_content 1950
    expect(page).to have_content 100,000

  end
end
