class PagesController < ApplicationController

  def index
    @attempt = Attempt.new
  end

  def posts
    unless session[:access]
      redirect_to root_path
    end
  end

end
