class FavoriteSnack < ApplicationRecord
  belongs_to :pet
  has_many :items
end
