class Animal < ApplicationRecord
  belongs_to :user
  validates :name, :species, :race, :location, presence: true
  has_one_attached :photo
end
