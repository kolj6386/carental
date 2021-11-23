class CarsController < ApplicationController
  before_action :set_car, only: %i[edit update destroy show]

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    car = Car.new(car_params)
    car.user = current_user
    if car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if car.update(car_params)
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  private

  def car_params
    params.require(:car).permit(:seats, :price, :make, :model, :trnasmission, :car_type, :suburb)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
