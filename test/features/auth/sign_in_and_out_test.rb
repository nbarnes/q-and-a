require "test_helper"

feature "Sign in and out" do
  scenario "User can sign in and then sign out" do
    visit user_session_path

    page.must_have_content "Login"
    page.wont_have_content "You are logged in"

    fill_in "Email", with: users(:agent).email
    fill_in "Password", with: "abetterworld"

    click_button "Sign in"

    page.must_have_content "Signed in successfully."

    click_on "Logout"

    page.must_have_content "Signed out successfully."
    page.wont_have_content "You are logged in"

  end

end
