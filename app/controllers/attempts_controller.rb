class AttemptsController < ApplicationController

def create
  @attempt = Attempt.new(attempt_params)
  @attempt.ip = request.remote_ip
  @attempt.save!
  if @attempt.number == ENV['ACCESS_PIN']
    session[:access] = true
    flash[:success] = 'Access Granted.'
    redirect_to posts_path
  else
    flash[:alert] = 'Access Denied.'
    redirect_to root_path
  end
end

protected

def attempt_params
  params.require(:attempt).permit(:number)
end

end
