class ContactsController < ApplicationController
  def new
  end 
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank yor for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      remder :new
    end
  end
end