class CarsController < ApplicationController
  before_action :set_car, only: %i[edit update destroy show]

  def index
    @cars = policy_scope(Car)
      @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
      }
      end
  end

  def new
    authorize Car
    @car = Car.new
  end

  def create
    authorize Car
    car = Car.new(car_params)
    car.user = current_user
    if car.save
      redirect_to car_path(car)
    else
      render :new
    end
  end

  def edit
    authorize @car
  end

  def update
    authorize @car
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def show
    authorize @car
    @markers =
      [{
        lat: @car.latitude,
        lng: @car.longitude
      }]
  end

  def destroy
    authorize @car
    @car.destroy
    redirect_to listings_cars_path
  end

  def listings
    authorize Car
    @cars = Car.where(user: current_user)
  end

  private

  def car_params
    params.require(:car).permit(:seats, :price, :make, :model, :transmission, :car_type, :suburb, :photo)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
