class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy show]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    authorize Booking
    @booking = Booking.new
  end

  def create
    authorize Booking
    booking = booking.new(booking_params)
    booking.user = current_user
    if booking.save
      redirect_to booking_path(booking)
    else
      render :new
    end
  end

  def edit
    authorize @booking
  end

  def update
    authorize @booking
    if booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    authorize @booking
  end

  def destroy
    authorize @booking
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
