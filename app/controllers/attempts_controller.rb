class AttemptsController < ApplicationController

  def create
    @attempt = Attempt.new(attempt_params)
    @attempt.ip = request.remote_ip
    @attempt.save!
    if @attempt.number == ENV['ACCESS_PIN']
      session[:access] = true
      session[:remaining] = 5
      flash[:success] = 'Access Granted.'
      redirect_to posts_path
    else
      flash[:alert] = "Access Denied. #{ActionController::Base.helpers.pluralize((session[:remaining] - 1), 'attempt')} remaining."
      session[:remaining] -= 1
      redirect_to root_path
    end
  end

  def index
    if session[:poster]
      @attempts = Attempt.order(:created_at).reverse_order.limit(50)
    else
      redirect_to root_path
    end
  end

  protected

  def attempt_params
    params.require(:attempt).permit(:number)
  end

end
