class AddProductidToProductCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :product_carts, :product_id, :integer
  end
end
