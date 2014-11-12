class Outgoing < ActiveRecord::Base
  validates_presence_of :email, :name, :subject, :body
  validates :email, "MailValidation::Email" => true
end
