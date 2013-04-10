require 'spec_helper'

feature "User Login" do
  scenario "User navigates to sign in page and logs in without credentials" do
    visit "/people/sign_in"
    click_button "Sign in"
    expect(page).to have_text("Invalid email or password.")
  end
  scenario "User navigates to sign in page and logs in with proper credentials" do
    sign_in
    expect(page).to have_text("Signed in successfully.")
  end
end