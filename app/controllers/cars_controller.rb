class CarsController < ApplicationController
  before_action :set_car, only: %i[edit update destroy show]

  def index
    @cars = policy_scope(Car)
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
    if car.update(car_params)
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def show
    authorize @car
  end

  def destroy
    authorize @car
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  private

  def car_params
    params.require(:car).permit(:seats, :price, :make, :model, :transmission, :car_type, :suburb)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
