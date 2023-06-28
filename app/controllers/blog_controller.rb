class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_tutor!, except: [:index, :show]

  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = current_tutor.blogs.new(blog_params)

    if @blog.save
      redirect_to @blog, notice: "Blog created successfully."
    else
      render :new
    end
  end

  def edit
    authorize_blog_owner!
  end

  def update
    authorize_blog_owner!

    if @blog.update(blog_params)
      redirect_to @blog, notice: "Blog updated successfully."
    else
      render :edit
    end
  end

  def destroy
    authorize_blog_owner!

    @blog.destroy
    redirect_to blogs_url, notice: "Blog deleted successfully."
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def authorize_blog_owner!
    redirect_to blogs_url, alert: "You are not authorized to perform this action." unless current_tutor == @blog.tutor
  end
end
