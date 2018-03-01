class RemoveRoleFromAdmins < ActiveRecord::Migration[5.1]
  def change
    remove_column :admins, :role, :integer
  end
end
