class FoodsController < ApplicationController
  def index
    # @total_hits = FoodFacade.total_hits(params[:q])
    @foods = FoodFacade.foods(params[:q])
    # binding.pry
  end
end