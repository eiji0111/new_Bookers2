class DailyMailer < ApplicationMailer
  default from: 'notifications@example.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.send_when_signup.subject
  #
  def send_mail
    @user = User.find(1)
    mail to: @user.email, subject: 'Registration Complete! Thanks for Joining!'
  end
end

# メーラークラス.メソッド.deliver_now
