class BlogController < ApplicationController
  include SessionsHelper
  before_filter :authorize, :except => [:index, :show]

  def index
    @blog = Blog.last
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_path(@blog)
    else
      status 400
    end
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = current_blog
  end

  def show
    @blog = current_blog
  end

  def update
    @blog = current_blog

    if @blog.update(blog_params)
      redirect_to blog_path(@blog)
    else
      status 400
    end
  end

  def destroy
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content, :excerpt)
  end

  def current_blog
    @blog = Blog.find(params[:id])
  end
end
