class BookingReview < ApplicationRecord
  belongs_to :booking
  has_many :reviews

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: (0..5) }
end
