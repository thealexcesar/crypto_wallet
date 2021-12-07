class Coin < ApplicationRecord
  belongs_to :mining, optional: false
end
