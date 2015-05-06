class BlogController < ApplicationController
  include SessionsHelper
  before_filter :authorize, :except => [:index, :show]

  def index
    @blog = Blog.last
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_index_path
    else
      status 400
    end
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content, :excerpt)
  end
end
