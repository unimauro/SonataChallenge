class CreateInventaries < ActiveRecord::Migration[6.0]
  def change
    create_table :inventaries do |t|
      t.string :name
      t.references :car, null: false, foreign_key: true
      t.references :dealer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
