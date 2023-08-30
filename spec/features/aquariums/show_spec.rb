require "rails_helper"

RSpec.describe "Aquarium Show" do 
  describe "as a visitor" do 
    before(:each) do
      @aquarium = Aquarium.create!(name: "Forest", water_type: "Fresh", dirty: false, gal_size: 500)
      @maintenance_log_1 = MaintenanceLog.create!(maintenance_person: "Alice", water_change: true, maintenance_duration_minutes: 30, aquarium_id: @aquarium.id)
      @maintenance_log_2 = MaintenanceLog.create!(maintenance_person: "Bob", water_change: false, maintenance_duration_minutes: 45, aquarium_id: @aquarium.id)
    end

    # User Story 2
    it "sees the aquariums id and attributes" do
      visit "/aquariums/#{@aquarium.id}"

      expect(page).to have_content(@aquarium.name)
      expect(page).to have_content(@aquarium.water_type)
      expect(page).to have_content(@aquarium.dirty)
      expect(page).to have_content(@aquarium.gal_size)
      expect(page).to have_content(@aquarium.created_at)
    end

    # User Story 7
    it "shows the number of logs with the aquarium" do
      visit "/aquariums/#{@aquarium.id}"

      expect(page).to have_content("Number of Maintenance Logs: 2")
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