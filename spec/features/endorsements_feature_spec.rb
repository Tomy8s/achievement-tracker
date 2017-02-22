require 'rails_helper'

feature "endorsements" do
  scenario "user adds an endorsement to achievment" do
    add_achievement
    visit "/"
    fill_in "Name", with: "John"
    fill_in "Comment", with: "Good worker"
    click_button "Endorse"
    expect(page).to have_content "John"
    expect(page).to have_content "Good worker"
  end
end
