#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:mycontact.db"

class Contact < ActiveRecord::Base
      validates :name, length:{minimum:4}
	  validates :position, presence:true
	  validates :email, presence:true
	  validates :additional_information, length:{minimum:10} 
	  validates :adress, presence:true
	  validates :company, presence:true
end


get '/' do
  erb "You can add new contact"
end

get '/contacts' do
    erb :contact
end

post '/contacts' do
                 # @name=params[:name]
				 # @position=params[:position]
				 # @company=params[:company]
				 # @adress=params[:adress]
			     # @currency=params[:currency]
			     # @email=params[:email]
			     # @additional_information =params[:additional_information]
				 
                 # Перший спосіб форми запису в базу:				 
                 # contact = Contact.new(:name => @name, :position => @position, :company => @company ,:adress => @adress, :currency => @currency, :email => @email, :additional_information => @additional_information)
	             # contact.save
                 
                 # Другий спосіб форми запису в базу:	 				 
				 # Contact.create(:name => @name, :position => @position, :company => @company ,:adress => @adress, :currency => @currency, :email => @email, :additional_information => @additional_information)
	             
                 # Третій спосіб форми запису в базу(використовуємо ActiveRecord):				 
				 # save - автоматично запускає валідацію
				 
				 # connect = Contact.new params[:contact]
                 # connect.save
				 
				 # Четвертий спосіб форми запису в базу найкоротший(використовуємо ActiveRecord):
                 # Contact.create params[:contact]				
				 
				 connect = Contact.new params[:contact]

				 if connect.save					
					erb :contact
				 else
				    @error_val = connect.errors.full_messages.first
					erb :contact
    			 end
 end