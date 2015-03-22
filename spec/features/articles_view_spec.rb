require 'rails_helper'

describe Article, :js => true do
  it "has a button that links to create a new article" do
    visit articles_path
    expect(page).to have_button('New Article')
  end

  it "adds a form to the page to create a new article" do
    visit articles_path
    click_button('New Article')
    expect(page).to have_selector('form')
  end

  # capybara matchers
  # capybara finders
end