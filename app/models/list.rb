class List < ApplicationRecord
  has_many :ingredients, as: :listable
end
