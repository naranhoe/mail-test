class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome(email)
    @email = email
    @url  = 'if you can read this, you are happy.'
    mail(to: 'anotheremail@example.com', subject: 'Welcome to My Awesome Site')
  end
end
