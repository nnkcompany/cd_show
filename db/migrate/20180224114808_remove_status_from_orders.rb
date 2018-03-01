class RemoveStatusFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :status, :string
  end
end
