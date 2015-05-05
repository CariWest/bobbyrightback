class BlogController < ApplicationController
  # before_filter :authorize

  def index
    @blog = Blog.last
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end
