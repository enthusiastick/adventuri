class OutgoingMailer < ActionMailer::Base
  default from: 'Adam Venturi <adam@venturicreative.com>'

  def send_out(outgoing)
    @outgoing = outgoing
    mail(to: "#{outgoing.name} <#{outgoing.email}>", subject: "#{outgoing.subject}")
  end

end
