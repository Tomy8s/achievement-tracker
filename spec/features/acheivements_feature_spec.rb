require 'rails_helper'

feature "acheivements" do
  scenario "user should see link to add acheivement" do
    visit "/"
    expect(page).to have_link "Add Achievement"
  end

  scenario "user should be taken to form to add achievement" do
    visit "/"
    click_link "Add Achievement"
    expect(page).to have_css "input#headline"
    expect(page).to have_css "input#description"
    expect(page).to have_css "input#categories"
    expect(page).to have_css "input#date"
    expect(page).to have_button "Submit Achievement"
  end
end
