class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :user_id
      t.integer :price
      t.string :artist_name
      t.string :artist_name_kana
      t.string :artist_name_eng
      t.string :cd_name
      t.string :cd_image_id
      t.string :label_name
      t.string :label_name_kana
      t.string :label_name_eng
      t.string :category
      t.string :quantity

      t.timestamps
    end
  end
end
