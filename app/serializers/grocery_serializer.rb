class GrocerySerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :food_type
end
