class Restaurant < ApplicationRecord
  has_many :reviews

  @allowed_categories = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, :address, :category, :phone_number, presence: true
  validates :category, :inclusion=> { :in => @allowed_categories }
end

