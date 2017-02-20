class AddExchangeToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :exchange, :integer
  end
end
