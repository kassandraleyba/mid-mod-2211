require "rails_helper"

RSpec.describe Food do
  it "exists" do
    attrs = {
      totalHits: 51270,
      foods: [{
        fdcId: 123456,
        gtinUpc: 123456789012,
        description: "Sweet Potato",
        brandOwner: "Sweet Potato Inc.",
        ingredients: "Sweet Potatoes"
      }]
    }

    food = Food.new(attrs)
   
    expect(food).to be_a(Food)
    expect(food.fdcid).to eq(123456)
    expect(food.gtin).to eq(123456789012)
    expect(food.description).to eq("Sweet Potato")
    expect(food.brand_owner).to eq("Sweet Potato Inc.")
    expect(food.ingredients).to eq("Sweet Potatoes")
  end
end