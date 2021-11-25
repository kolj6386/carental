class BookingReviewsController < ApplicationController
  def create
    review = BookingReview.new(review_params)
    booking = Booking.find(params[:booking_id])
    review.booking = booking
    authorize review
    if review.save
      redirect_to car_path(booking.car)
    else
      (render booking_path(booking))
    end
  end

  def new
    @review = BookingReview.new
    authorize @review
  end

  private

  def review_params
    params.require(:booking_review).permit(:rating, :content)
  end
end
