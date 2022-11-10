class ChangeTypeInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :type, :integer
  end
end
