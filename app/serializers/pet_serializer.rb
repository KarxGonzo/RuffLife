class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture
  has_many :favorite_snacks
end
