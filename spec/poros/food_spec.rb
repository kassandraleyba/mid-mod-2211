require "rails_helper"

RSpec.describe Food do
  it "exists" do
    attrs = {
      total_hits: 51270
      # foods: [{
      #   fdcid: 123456,
      #   gtin: 123456789012,
      #   description: "Sweet Potato",
      #   brand_owner: "Sweet Potato Inc.",
      #   ingredients: "Sweet Potatoes"
      # }]
    }

    food = Food.new(attrs)
    
    expect(food).to be_a(Food)
    expect(food.total_hits).to eq(51270)
    # binding.pry
    # expect(food.fdcid).to eq(123456)
    # expect(food.gtin).to eq(123456789012)
    # expect(food.description).to eq("Sweet Potato")
    # expect(food.brand_owner).to eq("Sweet Potato Inc.")
    # expect(food.ingredients).to eq("Sweet Potatoes")
  end
end