require 'rails_helper'

describe Article, :js => true do

  let!(:article) { FactoryGirl.create :article }
  before(:each) do
    visit articles_path
  end

  after(:each) do
    Article.destroy_all
  end

  it "has a button that links to create a new article" do
    expect(page).to have_button('New Article')
  end

  it "adds a form to the page to create a new article" do
    click_button('New Article')
    expect(page).to have_selector('form')
  end

  it "can create a new article" do
    click_button('New Article')
    fill_in 'Title', with: article.title
    fill_in 'Content', with: article.content
    click_button('Publish')
  end

  # capybara matchers
  # capybara finders
end