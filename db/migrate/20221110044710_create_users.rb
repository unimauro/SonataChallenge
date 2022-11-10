class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.text :password
      t.boolean :type
      t.datetime :created
      t.datetime :updated

      t.timestamps
    end
  end
end
