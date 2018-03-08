class ApplicationMailer < ActionMailer::Base
  default from: 'mail@test.com'
  layout 'mailer'
end
