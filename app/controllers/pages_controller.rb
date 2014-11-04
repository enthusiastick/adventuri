class PagesController < ApplicationController

  def access
    if params[:pin][:number] == ENV['ACCESS_PIN']
      session[:access] = true
      flash[:success] = 'Access Granted.'
      redirect_to posts_path
    else
      flash[:alert] = 'Access Denied.'
      redirect_to root_path
    end
  end

  def index
    @attempt = Attempt.new
  end

  def posts
    unless session[:access]
      redirect_to root_path
    end
  end

end
