class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :freight
      t.integer :address_id
      t.string :created_at
      t.string :status

      t.timestamps
    end
  end
end
