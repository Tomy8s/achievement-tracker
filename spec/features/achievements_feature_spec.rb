require 'rails_helper'

feature "achievements" do
  scenario "user should see link to add achievement" do
    visit "/"
    expect(page).to have_link "Add Achievement"
  end

  scenario "user should be taken to form to add achievement" do
    visit "/"
    click_link "Add Achievement"
    fill_in "Headline", with: "Career fair"
    fill_in "Description", with: "It was fun"
    fill_in "Categories", with: "Sponsorship, Role model"
    fill_in "Date", with: "2017-02-21"
    click_button "Submit Achievement"
    expect(page).to have_content "Career fair"
  end
end
