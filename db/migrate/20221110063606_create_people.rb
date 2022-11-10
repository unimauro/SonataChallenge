class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :pay_method
      t.string :role
      t.integer :phone
      t.string :about

      t.timestamps
    end
  end
end
