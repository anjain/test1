class AddTotalToMarks < ActiveRecord::Migration
  def change
  	add_column :marks, :total, :integer
  end
end
