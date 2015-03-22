require 'rails_helper'

describe Article, :js => true do
  it "has a button that links to create a new article" do
    visit articles_path
    expect(page).to have_content('New Article')
  end

  # capybara matchers
  # capybara finders
end