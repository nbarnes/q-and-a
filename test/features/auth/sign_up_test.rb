require "test_helper"

feature "Sign up" do
  scenario "User can sign up a new account" do
    visit root_path

    page.must_have_content "Sign up"
    page.wont_have_content "You are logged in"

    click_link "Sign up"

    page.must_have_content "Email"
    page.must_have_content "Password"
    page.must_have_content "Password confirmation"

    fill_in "Email", with: "scoobydo@mystery_machine.org"
    fill_in "Password", with: "scooby_snack"
    fill_in "Password confirmation", with: "scooby_snack"

    click_button "Sign up"

    page.must_have_content "Logged in as scoobydo@mystery_machine.org"
    page.must_have_content "Welcome! You have signed up successfully."

  end

end
