class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :song_title
      t.integer :disc_id
      t.string :song_number

      t.timestamps
    end
  end
end
