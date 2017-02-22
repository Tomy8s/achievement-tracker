require 'rails_helper'

feature "acheivements" do
  scenario "user should see link to add acheivement" do
    visit "/acheivements"
    expect(page).to have_link "Add Acheivement"
  end
end