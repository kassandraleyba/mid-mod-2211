class FoodFacade
  def self.total_hits(query)
    json = FoodService.food_by_name(query)
    @total_hits = json[:totalHits]
    binding.pry
  end

  def self.foods(query)
    json = FoodService.food_by_name(query)
    # binding.pry
    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end