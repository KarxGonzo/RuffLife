class Pet < ApplicationRecord
  belongs_to :user
  has_many :favorite_snacks
  has_many :items, through: :favorite_snacks
end
