class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :email
      t.integer :physics
      t.integer :chemistry
      t.integer :math

      t.timestamps
    end
  end
end
