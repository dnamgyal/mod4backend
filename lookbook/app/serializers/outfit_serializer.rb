class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :name, :items
  #has_one :user
end
