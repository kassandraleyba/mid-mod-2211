require 'rails_helper'

describe FoodService do
  context "class methods" do
    it "can search for food by name" do
      search = FoodService.food_by_name("sweet potato")
      
      expect(search).to be_a(Hash)
    end
  end
end