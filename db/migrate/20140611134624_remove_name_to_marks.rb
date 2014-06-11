class RemoveNameToMarks < ActiveRecord::Migration
  def change
    remove_column :marks, :name, :string
  end
end
