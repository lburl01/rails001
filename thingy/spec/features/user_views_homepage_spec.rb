require "rails_helper"

RSpec.feature "User views homepage" do
  scenario "they see log in button" do

    visit root_path

    expect(page).to have_link("Log In")
  end

  scenario "they see sign up button" do

    visit root_path

    expect(page).to have_link("Sign Up")
  end
end
