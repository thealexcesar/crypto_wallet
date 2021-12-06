class AddMiningTypeToCoin < ActiveRecord::Migration[6.1]
  def change
    add_reference :coins, :mining_types, null: false, foreign_key: true
  end
end
