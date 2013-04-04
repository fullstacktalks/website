require 'spec_helper'

feature "People Link" do
  scenario "User clicks People link" do
    visit "/"
    click_link "People"
    expect(page).to have_text("Listing people")
  end
end