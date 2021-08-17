class FavoriteSnack < ApplicationRecord
  belongs_to :pets
  has_many :items
end
