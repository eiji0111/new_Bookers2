class Batch::SendEmail

  def self.send
    WelcomeMailer.send_signup_email(user).deliver_now
    p "メールを送信しました"
  end
end