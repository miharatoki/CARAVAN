class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end
  
  def create
    @blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_pash
  end

  def edit
  end
  
  private   
  def blog_params
    params.require(:blog).permie(:title, :category, :body)
  end
end