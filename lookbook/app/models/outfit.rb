class Outfit < ApplicationRecord
  #belongs_to :user
  has_many :outfit_items, dependent: :delete_all
  has_many :items, through: :outfit_items


end
