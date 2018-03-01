class CreateProductOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :product_orders do |t|
      t.integer :product_id
      t.integer :order_id
      t.string :quantity
      t.integer :price
      t.integer :total_price

      t.timestamps
    end
  end
end
