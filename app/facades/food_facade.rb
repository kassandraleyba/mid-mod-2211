class FoodFacade
  # def self.total_hits(query)
  #   json = FoodService.new.food_by_name(query)
  #   @total_hits = json[:totalHits]
  # end

  def self.foods(query)
    json = FoodService.food_by_name(query)
    
    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end