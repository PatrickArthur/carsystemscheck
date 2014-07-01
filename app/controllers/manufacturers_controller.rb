class ManufacturersController < ApplicationController
  include ActionView::Helpers::TextHelper

  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @anufacturer = Manufacturer.find(params[:id])
  end


  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      flash[:notice] = "Success!"
      redirect_to '/manufacturers'
    else
      flash.now[:notice] = "Your manufacturer couldn't be saved."
      render :new
    end
  end



  private
    def manufacturer_params
      params.require(:post).permit(:name,:country)
    end
end
