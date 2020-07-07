class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :items, :outfits
end
