class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = 'Posted.'
      redirect_to posts_path
    else
      flash[:alert] = 'Error.'
      render :new
    end
  end

  def index
    redirect_to root_path unless session[:access]
    @post = Post.last
  end

  def new
    @post = Post.new
  end

  protected

  def post_params
    params.require(:post).permit(:body, :title)
  end

end
