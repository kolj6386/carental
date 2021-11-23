class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :bookings_reviews, through: :bookings
  validates :seats, presence: true
  validates :price, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :transmission, presence: true
  validates :car_type, presence: true
  validates :suburb, presence: true
end
