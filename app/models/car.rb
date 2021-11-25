class Car < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :booking_reviews, through: :bookings, dependent: :destroy
  has_one_attached :photo

  validates :seats, presence: true
  validates :price, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :transmission, presence: true, inclusion: { in: %w[automatic manual] }
  validates :car_type, presence: true
  validates :suburb, presence: true
end
