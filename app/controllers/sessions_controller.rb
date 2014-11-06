class SessionsController < ApplicationController

  def create
    if request.env['omniauth.auth']['uid'] == ENV['TWITTER_UID']
      session[:access] = true
      session[:poster] = true
      redirect_to new_post_path
    else
      session[:poster] = nil
      redirect_to root_path
    end
  end

  def destroy
    session[:poster] = nil
    redirect_to root_path
  end

end
