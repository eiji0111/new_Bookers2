class WelcomeMailer < ApplicationMailer
  default from: 'notifications@example.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.send_when_signup.subject
  #
  def send_signup_email(user)
    @user = user
    mail to: @user.email, subject: "会員登録が完了しました。"
  end
end
