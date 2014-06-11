class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :physics
      t.integer :chamistry
      t.integer :maths
      t.integer :user_id

      t.timestamps
    end
  add_index :marks, [:user_id, :created_at]
  end
end
