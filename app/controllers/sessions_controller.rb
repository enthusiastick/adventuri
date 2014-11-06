class SessionsController < ApplicationController

  def create
    if request.env['omniauth.auth']['uid'] == '2845307227'
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
