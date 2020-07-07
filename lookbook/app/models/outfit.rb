class Outfit < ApplicationRecord
  belongs_to :user
  has_many :outfit_items
  has_many :items, through: :outfit_items


end
