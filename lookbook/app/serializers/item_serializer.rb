class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :image, :category, :outfit
  has_one :user
end
