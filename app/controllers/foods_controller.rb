class FoodsController < ApplicationController
  def index
    @total_hits = FoodFacade.total_hits(params[:q])
    binding.pry
    # @foods = FoodFacade.foods(params[:q])
  end
end