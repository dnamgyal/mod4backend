class OutfitItemSerializer < ActiveModel::Serializer
  attributes :id
  has_one :item
  has_one :outfit
end
