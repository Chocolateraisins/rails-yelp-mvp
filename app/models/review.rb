class Review < ApplicationRecord
  belongs_to :restaurant, :dependent => :destroy

  validates :restaurant_id, uniqueness: { scope: :parent_id }
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
