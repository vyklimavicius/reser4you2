class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  has_secure_password
  has_many :reservations
  has_many :payments
end
