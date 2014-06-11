class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name
      t.string :email
      t.integer :mathno
      t.integer :physicsno
      t.integer :chemistryno

      t.timestamps
    end
  end
end
