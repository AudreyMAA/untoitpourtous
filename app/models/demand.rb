class Demand < ApplicationRecord
  belongs_to :animal
  belongs_to :user
  validates :description, presence: true
end
