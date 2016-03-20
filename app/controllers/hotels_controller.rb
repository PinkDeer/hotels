class HotelsController < ApplicationController
  before_action :find_hotel, only: [:show]

  def index
  end

  def show
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
			redirect_to @hotel
		else
			render 'new'
		end
	end

  private

  def find_hotel
    @hotel = Hotel.find(params[:id])
  end

  def hotel_params
		params.require(:hotel).permit(:name, :price, :rating, :assessement)
	end

end
