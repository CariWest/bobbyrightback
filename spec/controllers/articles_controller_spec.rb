require 'rails_helper'

describe ArticlesController do

  let!(:article) { Article.create(title: "dad", content: "is awesome") }

  before(:each) do
    get :index
  end

  it 'returns a status of 200' do
    expect(response.status).to eq 200
  end

  it 'assigns the @articles instance variable' do
    expect(assigns :articles).to be_a Article::ActiveRecord_Relation
  end

  # how do I test the content of @articles?

  # it 'assigns the content of the @articles instance variable' do
  #   expect(response.body).to eq article
  # end
end