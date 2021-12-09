class Coin < ApplicationRecord
  belongs_to :mining, optional: false
  validates :coin_name, presence: true
end
