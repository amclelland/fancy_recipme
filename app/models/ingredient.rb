class Ingredient < ApplicationRecord
  belongs_to :listable, polymorphic: true
end
