class CatalogController < ApplicationController
  def index
  	@cars = Car.joins(:car_name).order('car_names.name').page(params[:page]).per(10)
  end
end