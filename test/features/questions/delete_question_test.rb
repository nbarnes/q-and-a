require "test_helper"

feature "Delete question" do
  scenario "User can delete a question" do

    login_user2

    visit root_path

    page.must_have_content "the_second_question"

    page.find(:xpath, '//*[@id="question_1059720138"]').click_on("Destroy")

    page.wont_have_content "the_second_question"

  end

end
