class ApplicationMailer < ActionMailer::Base
  default from: "〇〇事務局"
  # cc:       "hogehoge@gmail.com"
  # bcc:      "hoge_hoge@gmail.com"
  layout 'mailer'
end
