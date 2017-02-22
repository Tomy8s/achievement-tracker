require 'rails_helper'

feature "endorsements" do
  scenario "user adds an endorsement to achievment" do
    add_achievement
    visit "/"
    fill_in "name", with: "John"
    fill_in "endorsement", with: "Good worker"
    click_link "Endorse"
    expect(page).to have_content "John"
    expect(page).to have_content "Good worker"
  end
end