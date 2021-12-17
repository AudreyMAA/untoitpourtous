class Animal < ApplicationRecord
  belongs_to :user
  validates :name, :species, :race, :location, presence: true
  has_many_attached :photos
end
