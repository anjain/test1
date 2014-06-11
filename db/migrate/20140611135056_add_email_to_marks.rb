class AddEmailToMarks < ActiveRecord::Migration
  def change
  	add_column :marks, :email, :string
  end
end
