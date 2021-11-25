class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy show]
  before_action :set_car, only: %i[new create]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    @booking.car = @car
    authorize @booking
  end

  def create
    booking = Booking.new(booking_params)
    booking.car = @car
    booking.user = current_user
    authorize booking
    if booking.save
      redirect_to booking_path(booking)
    else
      (render new_car_booking_path(@car.id))
    end
  end

  def edit
    authorize @booking
  end

  def update
    authorize @booking
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @review = BookingReview.new
    authorize @booking
  end

  def destroy
    authorize @booking
    @booking.delete
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
