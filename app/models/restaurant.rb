class Restaurant < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :reservations
  has_many :reviews 
end
