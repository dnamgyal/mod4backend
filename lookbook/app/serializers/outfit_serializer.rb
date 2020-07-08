class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :outfit_items
  #has_one :user
end
