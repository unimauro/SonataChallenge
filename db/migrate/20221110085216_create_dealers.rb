class CreateDealers < ActiveRecord::Migration[6.0]
  def change
    create_table :dealers do |t|
      t.string :name
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
