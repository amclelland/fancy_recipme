class IngredientSerializer < ActiveModel::Serializer
  attributes :name, :quantity, :quantity_units
  belongs_to :listable
end
