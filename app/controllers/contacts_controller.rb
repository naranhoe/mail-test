class ContactsController < ApplicationController

  def index
    @email = Contact.new
  end

  def create
    @email = Contact.new(stuff)
    if @email.save
      UserMailer.welcome(@email).deliver_now
      Contact.destroy_all
      redirect_to root_path
    end
  end


  private
  def stuff
    params.permit(:email)
  end
end
