class AddRoleIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role_id, :integer
    add_index :users, :role_id
  end
end
