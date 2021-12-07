class CreateMinings < ActiveRecord::Migration[6.1]
  def change
    create_table :minings do |t|
      t.string :description
      t.string :acronym

      t.timestamps
    end
  end
end
