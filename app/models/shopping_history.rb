class ShoppingHistory < ApplicationRecord
  belongs_to :user
  belongs_to :items
end
