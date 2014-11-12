class PostsController < ApplicationController

  before_action :verify, only: [:create, :new, :show, :update]

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
    @posts = Post.order(:created_at).reverse_order.limit(10)
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = 'Updated'
      redirect_to posts_path
    else
      flash[:alert] = 'Error.'
      render :show
    end
  end

  protected

  def post_params
    params.require(:post).permit(:body, :title)
  end

end
