require 'rails_helper'

describe ArticlesController do

  # not working with FactoryGirl?
  let!(:article) { Article.create(title: "dad", content: "is awesome") }

  before(:each) do
    get :index
  end

  it 'returns a status of 200' do
    expect(response.status).to eq 200
  end

  it 'assigns the @articles instance variable' do
    expect(assigns :articles).to include article
  end
end