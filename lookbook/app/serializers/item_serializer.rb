class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :image, :category, :user_id
  #, :outfits
  #has_one :user
end
