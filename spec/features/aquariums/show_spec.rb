require "rails_helper"

RSpec.describe "Aquariums Index" do 
  describe "#show" do 
    it "shows the aquarium attributes" do 
      aquarium = Aquarium.create!(name: "Forest", water_type: "Fresh", dirty: false, gal_size: 500)

      visit "/aquariums/#{aquarium.id}"

      expect(page).to have_content(aquarium.name)
      expect(page).to have_content(aquarium.water_type)
      expect(page).to have_content(aquarium.dirty)
      expect(page).to have_content(aquarium.gal_size)
      expect(page).to have_content(aquarium.created_at)
    end 
  end
end