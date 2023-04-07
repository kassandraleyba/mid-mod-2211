class FoodService
  def self.food_by_name(query)
    get_url("/fdc/v1/foods/search?query=#{query}")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.headers["X-Api-Key"] = ENV["FOOD_API_KEY"]
    end
  end
end