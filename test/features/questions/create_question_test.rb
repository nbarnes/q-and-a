require "test_helper"

feature "Create question" do
  scenario "User can create a question" do

    login_user1

    visit root_path

    page.wont_have_content "the_fifth_question"

    click_on "New Question"

    page.must_have_content "Question text"

    fill_in "Question text", with: "the_fifth_question"

    click_on "Create Question"
    click_on "Back"

    page.must_have_content "the_fifth_question"

  end

end
