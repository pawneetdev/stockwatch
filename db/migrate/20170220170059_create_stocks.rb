class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :quantity
      t.integer :cost
      t.datetime :purchased_on

      t.timestamps null: false
    end
  end
end
