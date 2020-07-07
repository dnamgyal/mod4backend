class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :image, :category, :outfits
  #has_one :user
end
