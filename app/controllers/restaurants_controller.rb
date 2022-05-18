class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.new(new_params)

    redirect_to @restaurant, notice: 'We have listsed your entry' if @restaurant.save
    render :new
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def new_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
