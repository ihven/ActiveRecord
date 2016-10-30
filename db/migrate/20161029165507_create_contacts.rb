class CreateContacts < ActiveRecord::Migration
  def change
       create_table :contacts do |contact|
	        contact.text:name
			contact.text:position
			contact.text:company
			contact.text:adress
			contact.text:currency
			contact.text:email
			contact.text:additional_information
		end
  end
end
