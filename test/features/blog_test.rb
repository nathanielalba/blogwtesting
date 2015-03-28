require "test_helper"

feature "Blog" do
  scenario "GET :index" do
    visit root_path
    page.must_have_content "Welcome to my blog"
  end
end
