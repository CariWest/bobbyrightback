require 'rails_helper'

describe Article, :js => true do
  it "has a button that links to create a new article" do
    visit root_path

    # response.should have_tag("a[href$=/articles/new", text: "New Article")
    expect(page).to have_content('New Article')
  end

  # capybara matchers
  # capybara finders

end