class OutgoingsController < ApplicationController
  before_action :verify

  def create
    @outgoing = Outgoing.new(outgoing_params)
    if @outgoing.save!
      OutgoingMailer.send_out(@outgoing).deliver
      flash[:success] = 'Message sent.'
      redirect_to new_post_path
    else
      flash[:error] = 'Unable to send.'
      render :new
    end
  end

  def new
    @outgoing = Outgoing.new
  end

  protected

  def outgoing_params
    params.require(:outgoing).permit(:name, :email, :subject, :body)
  end

end
