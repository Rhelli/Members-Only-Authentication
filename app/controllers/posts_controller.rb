class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

include SessionsHelper

  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = 'Your post was successfully created!'
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = 'You must be logged in to do that.'
      redirect_to login_url
    end
  end
end
