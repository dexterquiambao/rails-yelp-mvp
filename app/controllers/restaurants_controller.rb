class RestaurantsController < ApplicationController

  # List all Restaurants
  def index
    @restaurants = Restaurant.all
  end

  # Display info for a singular restaurant
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # Add a new restaurant
  def new
    @restaurant = Restaurant.new
  end

  # Add (create) and save a new restaurant
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      # After saving, goes back restaurants root
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  # Just for the developer
  private

  # Validation rules from model
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
