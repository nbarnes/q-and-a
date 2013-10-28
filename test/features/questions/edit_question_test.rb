require "test_helper"

feature "Edit question" do
  scenario "User can edit a question" do

    login_user3

    visit root_path

    page.must_have_content "the_third_question"

    page.find(:xpath, '//*[@id="question_137182049"]').click_on("Edit")

    fill_in "Question text", with: "the_zeroth_question"

    click_on "Update Question"
    click_on "Back"

    page.must_have_content "the_zeroth_question"
    page.wont_have_content "the_third_question"

  end

end
