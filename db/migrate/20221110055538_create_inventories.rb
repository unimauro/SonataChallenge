class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.string :car_model
      t.float :price
      t.integer :km
      t.integer :seating
      t.string :type
      t.integer :doors
      t.string :address
      t.string :state
      t.string :dealership

      t.timestamps
    end
  end
end
