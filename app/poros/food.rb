class Food
  attr_reader :total_hits,
              :fdcid, 
              :gtin, 
              :description, 
              :brand_owner, 
              :ingredients

  def initialize(data)
    @fdcid = data[:foods][0][:fdcId]
    @gtin = data[:foods][0][:gtinUpc]
    @description = data[:foods][0][:description]
    @brand_owner = data[:foods][0][:brandOwner]
    @ingredients = data[:foods][0][:ingredients]
  end
end