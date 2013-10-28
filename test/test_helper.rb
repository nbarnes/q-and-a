ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
# require "minitest/rails/capybara"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
#  include Capybara::RSpecMatchers
  include Capybara::DSL
end

def login_user1
    visit root_path
    click_on "Login"

    fill_in "Email", with: users(:author01).email
    fill_in "Password", with: "author01"

    click_button "Sign in"
    page.must_have_content "Signed in successfully."
end

def login_user2
    visit root_path
    click_on "Login"

    fill_in "Email", with: users(:author02).email
    fill_in "Password", with: "author02"

    click_button "Sign in"
    page.must_have_content "Signed in successfully."
end

def login_user3
    visit root_path
    click_on "Login"

    fill_in "Email", with: users(:author03).email
    fill_in "Password", with: "author03"

    click_button "Sign in"
    page.must_have_content "Signed in successfully."
end