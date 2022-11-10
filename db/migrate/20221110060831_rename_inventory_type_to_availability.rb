class RenameInventoryTypeToAvailability < ActiveRecord::Migration[6.0]
  def change
    rename_column :inventories, :type, :availability
  end
end
