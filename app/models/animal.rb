class Animal < ApplicationRecord
  belongs_to :user
  validates :name, :type, :race, :location, presence: true
end
