class ChangePriceToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :product3s, :price, :float
  end
end
