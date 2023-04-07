# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients

require "rails_helper"

RSpec.describe "Foods Index Page" do
  context "As a user, when I visit the foods index page" do
    it "I see a total of the number of items returned by the search" do
      visit "/foods"

      expect(page).to have_content("Total Results: ")
    end

    xit "I see a list of TEN foods that contain the ingredient 'sweet potatoes'" do

    end

    xit "I see the food's GTIN/UPC code, desctription, brand owner, and ingedients" do

    end
  end
end