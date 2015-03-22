require 'rails_helper'

describe ArticlesController do

  describe "GET #index" do
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

  describe "GET #new" do
    before(:each) do
      get :new
    end

    after(:each) do
      Article.destroy_all
    end

    it "assigns @article to a new Article object" do
      expect(assigns :article).to be_a_new Article
    end
  end
end
