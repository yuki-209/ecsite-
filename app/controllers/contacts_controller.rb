class ContactsController < ApplicationController
  def index
    @contacts = Contact.order("id")
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render "sended"
    else
      render "new"
    end
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.assign_attributes(contact_params)
    if @contact.save
      redirect_to @contact
    else
      render "edit"
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to :contacts
  end
  
  def sended
  end
  
  private def contact_params
    params.require(:contact).permit(:name,:email,:request,:text)
  end
end
