class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :user_id
  has_many :favorite_snacks
end
