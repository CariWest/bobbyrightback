class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @article = Article.new
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    puts "*" * 50
    puts "inside create"
    @article = Article.new(article_params)

    if @article.save
      paths = {
        show: article_path(@article),
        edit: edit_article_path(@article),
        destroy: article_path(@article)
      }
      render :json => { article: @article, paths: paths }
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    p params
    params.require(:article).permit(:title, :content)
  end
end
