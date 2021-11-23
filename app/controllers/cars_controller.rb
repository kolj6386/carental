class CarsController < ApplicationController
  before_action :set_car, only: %i[edit update destroy show]

  def index
    @cars = Car.all
  end

  def new
<<<<<<< HEAD
=======
    authorize Car
>>>>>>> f2047a1d822a0f4dfd4d805fb5140226c83c6f5b
    @car = Car.new
  end

  def create
<<<<<<< HEAD
=======
    authorize Car
>>>>>>> f2047a1d822a0f4dfd4d805fb5140226c83c6f5b
    car = Car.new(car_params)
    car.user = current_user
    if car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
<<<<<<< HEAD
  end

  def update
=======
    authorize @car
  end

  def update
    authorize @car
>>>>>>> f2047a1d822a0f4dfd4d805fb5140226c83c6f5b
    if car.update(car_params)
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def show
<<<<<<< HEAD
  end

  def destroy
=======
    authorize @car
  end

  def destroy
    authorize @car
>>>>>>> f2047a1d822a0f4dfd4d805fb5140226c83c6f5b
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
