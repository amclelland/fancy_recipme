class Meal < ApplicationRecord
  has_many :ingredients, as: :listable

  validates :name, presence: true
  validates :image, presence: true
end
