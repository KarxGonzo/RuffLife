class FavoriteSnack < ApplicationRecord
  belongs_to :pet
  belongs_to :item
  validates_uniqueness_of :item_id, scope: :pet_id
end
