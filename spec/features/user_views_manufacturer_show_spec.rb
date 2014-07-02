require 'rails_helper'

feature 'user visits individual manufacturer page' do
  scenario "user sees manufacturer information" do
    manufacturer = FactoryGirl.create(:manufacturer)

    visit "/manufacturers/#{manufacturer.id}"

    expect(page).to have_content "GM"
    expect(page).to have_content "US"
  end
end
