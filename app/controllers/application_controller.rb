class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def verify
    redirect_to root_path unless session[:poster]
  end

end
