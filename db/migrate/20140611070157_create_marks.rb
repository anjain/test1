class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.string :name
      t.string :email
      t.integer :phy
      t.integer :chem
      t.integer :math

      t.timestamps
    end
  end
end
