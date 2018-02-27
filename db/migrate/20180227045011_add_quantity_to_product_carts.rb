class AddQuantityToProductCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :product_carts, :quantity, :integer , :default => 1
  end
end
