class Batch::SendEmail
  def self.send
    DailyMailer.send_mail.deliver_now
    p "メールを送信しました"
  end
end
