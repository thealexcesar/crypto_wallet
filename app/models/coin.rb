class Coin < ApplicationRecord
  belongs_to :mining, optional: false
  validates :coin_name, :acronym, :url_image, presence: true
end
