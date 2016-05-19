class UserMailer < ApplicationMailer
  default from: 'elloco2331@yahoo.com'

  def welcome(email)
    @email = email
    @url  = 'if you can read this, you are fucked.'
    mail(to: 'angelman@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
