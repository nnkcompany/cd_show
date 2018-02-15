class CreateDiscs < ActiveRecord::Migration[5.1]
  def change
    create_table :discs do |t|
      t.integer :product_id
      t.string :disc_name
      t.string :disc_number

      t.timestamps
    end
  end
end
