class VenmoMailer < ActionMailer::Base
  default from: "joe@yahoo.com"

  def venmo_email(data, user)
    @data = data
    @user = user
    mail(to: @user.email, subject: 'Venmo Webhook')
  end
end
