require "test_helper"

feature "Front page" do

  scenario "Displays the front page" do
    visit root_path
    page.must_have_content "Question text"
  end

end
