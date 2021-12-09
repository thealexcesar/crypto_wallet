class Mining < ApplicationRecord
  has_many :coins, dependent: :destroy
end
