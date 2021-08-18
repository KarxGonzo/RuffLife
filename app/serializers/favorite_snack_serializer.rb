class FavoriteSnackSerializer < ActiveModel::Serializer
  attributes :id, :rating
  belongs_to :item
end
