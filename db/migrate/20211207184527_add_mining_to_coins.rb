class AddMiningToCoins < ActiveRecord::Migration[6.1]
  def change
    add_reference :coins, :mining, foreign_key: true
  end
end
