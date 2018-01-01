class Purchase < ApplicationRecord
  belongs_to :category
  belongs_to :shop
  belongs_to :denomination
end
