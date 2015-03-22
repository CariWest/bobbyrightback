require 'rails_helper'

describe Article, :js => true do

  before(:each) do
    visit articles_path
  end

  it "has a button that links to create a new article" do
    expect(page).to have_button('New Article')
  end

  it "adds a form to the page to create a new article" do
    click_button('New Article')
    expect(page).to have_selector('form')
  end

  it "can create a new article" do
  end

  # capybara matchers
  # capybara finders
end