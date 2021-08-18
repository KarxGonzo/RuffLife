class FavoriteSnack < ApplicationRecord
  belongs_to :pet
  belongs_to :item
end
