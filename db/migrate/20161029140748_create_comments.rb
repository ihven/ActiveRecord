class CreateComments < ActiveRecord::Migration
  def change
      create_table :comments do |comment|
	               comment.text:author
				   comment.text:comment
				   comment.integer:com_id
				   comment.date:attached
				   
				   comment.timestamps
	  end  
  end
end
