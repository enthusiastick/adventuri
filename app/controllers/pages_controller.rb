class PagesController < ApplicationController

  def index
    @attempt = Attempt.new
    if session[:remaining].nil?
      session[:remaining] = 5
    elsif session[:remaining] == 0
      redirect_to 'http://venturicreative.com'
    end
  end

  def posts
    unless session[:access]
      redirect_to root_path
    end
  end

end
