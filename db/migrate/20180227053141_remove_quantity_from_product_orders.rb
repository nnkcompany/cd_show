class RemoveQuantityFromProductOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :product_orders, :quantity, :string
  end
end
