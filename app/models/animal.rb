class Animal < ApplicationRecord
  SPECIES = ["Chien", "Chat", "Oiseau", "Rongeur", "Autre"]
  belongs_to :user
  has_many :demands
  validates :name, :species, :race, :location, presence: true
  has_many_attached :photos
end
