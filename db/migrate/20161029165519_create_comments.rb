class CreateComments < ActiveRecord::Migration
  def change
     create_table :comments do |comment|
	      comment.text :author
		  comment.text :comment
		  comment.datetime :addeted
		  comment.integer :comment_id
		  comment.timestamps
	 end
  end
end
