class Food
  attr_reader :total_hits,
              :fdcid, 
              :gtin, 
              :description, 
              :brand_owner, 
              :ingredients

  def initialize(data)
    # @total_hits = data[:totalHits]
    binding.pry
    @fdcid = data[:fdcId]
    @gtin = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end