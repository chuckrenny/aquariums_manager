require "rails_helper"

RSpec.describe "Aquarium Show" do 
  describe "as a visitor" do 
    before(:each) do
      @aquarium = Aquarium.create!(name: "Forest", water_type: "Fresh", dirty: false, gal_size: 500)
    end

    # User Story 3
    it "shows the aquarium attributes" do 
      visit "/aquariums/#{@aquarium.id}"

      expect(page).to have_content(@aquarium.name)
      expect(page).to have_content(@aquarium.water_type)
      expect(page).to have_content(@aquarium.dirty)
      expect(page).to have_content(@aquarium.gal_size)
      expect(page).to have_content(@aquarium.created_at)
    end 

    # User Story 10
    it "has a link to logs" do
      visit "/aquariums/#{@aquarium.id}"

      expect(page).to have_link("Maintenance Logs of #{@aquarium.name}")
      click_link("Maintenance Logs of #{@aquarium.name}")

      expect(current_path).to eq("/aquariums/#{@aquarium.id}/logs")
    end
  end
end