class Pet < ApplicationRecord
  belongs_to :user
  has_many :favorite_snacks
end
