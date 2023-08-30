require "rails_helper"

RSpec.describe "Log Index" do 
  describe "as a visitor" do 
    before(:each) do
      @aquarium = Aquarium.create!(name: "Forest", water_type: "Fresh", dirty: false, gal_size: 500)
      @log = MaintenanceLog.create!(maintenance_person: "Dave", water_change: true, maintenance_duration_minutes: 40, aquarium_id: @aquarium.id)
    end

    # User Story 3
    it "shows the aquarium attributes" do 
      visit "/maintenance_logs"

      expect(page).to have_content(@log.maintenance_person)
      expect(page).to have_content(@log.water_change)
      expect(page).to have_content(@log.maintenance_duration_minutes)
    end 
  end
end