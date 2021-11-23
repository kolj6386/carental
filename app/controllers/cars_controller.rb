class CarsController < ApplicationController
  before_action :set_car, only: %i[edit update destroy show]

  def index
  end

  def new
  end

  def create
    car = Car.new(car_params)
    car.user = current_user
    redirect_to car_path(@car)
  end

  def edit
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def show
  end

  def destroy
  end

  private

  def car_params
    params.require(:car).permit(:seats, :price, :make, :model, :trnasmission, :car_type, :suburb)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
