class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end


  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      flash[:notice] = "Success!"
      redirect_to '/Cars'
    else
      flash.now[:notice] = "Your Car couldn't be saved."
      render :new
    end
  end


  private
    def Car_params
      params.require(:Car).permit(:manufacturer,:color,:year,:mileage)
    end
end
