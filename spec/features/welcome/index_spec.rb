# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"

require 'rails_helper'

RSpec.describe 'Welcome Index Page' do
  context 'As a user, when I visit the welcome page' do
    it "I see a form to search for foods" do
      visit root_path

      expect(page).to have_field(:q)
      expect(page).to have_link('Search')
    end

    it "When I fill in the search form with 'sweet potatoes' and click 'Search', I am redirected to the foods index page" do
      visit root_path

      fill_in :q, with: 'sweet potatoes'
      
      click_on 'Search'

      expect(current_path).to eq("/foods")
    end
  end
end