class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :coins do |t|
      t.string :description
      t.string :acromym
      t.string :url_image

      t.timestamps
    end
  end
end
