class HotelsController < ApplicationController
  before_action :find_hotel, only: [:show, :edit, :update, :destroy]

  def index
    @hotel = Hotel.all.order("created_at DESC")
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

  def update
		if @hotel.update(hotel_params)
			redirect_to @hotel
		else
			render 'edit'
		end
	end

	def destroy
		@hotel.destroy
		redirect_to root_path
	end

  private

  def find_hotel
    @hotel = Hotel.find(params[:id])
  end

  def hotel_params
		params.require(:hotel).permit(:name, :price, :rating, :assessement)
	end

end
