require 'rails_helper'

feature 'user visits manufacturer index' do

  scenario "user sees all the manufacturers" do
    visit '/manufacturers'

    expect(page).to have_content "GM"
    expect(page).to have_content "Italy"
  end
end
