class ShoppingHistorySerializer < ActiveModel::Serializer
  attributes :id, :item, :date, :quantity
end
