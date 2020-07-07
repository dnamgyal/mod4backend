class User < ApplicationRecord
    has_many :items
    has_many :outfits
    has_many :outfit_items, through: :outfits
end
