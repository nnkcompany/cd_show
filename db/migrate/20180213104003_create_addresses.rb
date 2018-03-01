class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :last_name
      t.string :first_name
      t.string :zip
      t.string :address
      t.string :tell

      t.timestamps
    end
  end
end
