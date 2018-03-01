class RemoveQuantityFromProductCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :product_carts, :quantity, :string
  end
end
