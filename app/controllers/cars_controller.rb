class CarsController < ApplicationController

  def new
    @car = Car.new
  end

  def create
    if params[:car][:color] != ''
      @color = Color.find(params[:car][:color])
      @car = @color.cars.build(car_params)
    else
      @car = Car.new(car_params)
    end

    if @car.save
      redirect_to new_car_path, notice: 'Car created successfully'
    else
      render :new
    end
  end

  protected
  def car_params
    params.require(:car).permit(:year, :mileage, :description, :color_id )
  end

end
