class CreateContacts < ActiveRecord::Migration
  def change
     create_table:contacts  do |contact| 
                  contac.text:tname
				  contac.text:position
				  contac.text:company
				  contac.text:adress
			      contac.text:currency
			      contac.text:email
			      contac.text:additional_information
				  contact.timestamps
	 end  
  end
end
