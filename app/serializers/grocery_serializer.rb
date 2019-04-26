class GrocerySerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :food_type, :user_id
end
