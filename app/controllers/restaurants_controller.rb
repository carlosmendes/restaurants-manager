class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy] 
  # setting the restaurant like line 10, 30, 35, 44

  def index
  	@restaurants = Restaurant.all
  end

  def show
  	# @restaurant = Restaurant.find(params[:id])
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
  	# Create the restaurant using params into the DB
  	# 
  	# Restaurant.create(name: params[:name], address: params[:address], stars: params[:stars])
  	# instead of doing this we create a restaurant hash inside params hash and filter the attributes
  	# using a private method like restaurant_params
  	Restaurant.create(restaurants_params)

  	redirect_to restaurants_path
  end


  def edit
  	# @restaurant = Restaurant.find(params[:id])
  end

  def update
  	# get it again from DB
  	# @restaurant = Restaurant.find(params[:id])
  	# Update with the new params
  	@restaurant.update(restaurants_params)

  	redirect_to restaurants_path
  end

  def destroy
  	# get it from the DB
  	# @restaurant = Restaurant.find(params[:id])

  	# Destroy
  	@restaurant.destroy

  	# Redirect the user to the list
  	redirect_to restaurants_path	
  end

  private

  def set_restaurant
  	@restaurant = Restaurant.find(params[:id]) 
  end

  def restaurants_params
  	params.require(:restaurant).permit(:name, :address, :stars)
  end
end
