#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:mycontact.db"

class Contact < ActiveRecord::Base
end


get '/' do
  erb "You can add new contact"
end

get '/contacts' do
    erb :contact
end

post '/contacts' do
                  @name=params[:name]
				  @position=params[:position]
				  @company=params[:company]
				  @adress=params[:adress]
			      @currency=params[:currency]
			      @email=params[:email]
			      @additional_information =params[:additional_information]
				  
                  #contact = Contact.new(:name => @name, :position => @position, :company => @company ,:adress => @adress, :currency => @currency, :email => @email, :additional_information => @additional_information)
	              #contact.save
				  Contact.create(:name => @name, :position => @position, :company => @company ,:adress => @adress, :currency => @currency, :email => @email, :additional_information => @additional_information)
	              erb :contact
end