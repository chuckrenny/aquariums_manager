require "rails_helper"

RSpec.describe "Log Index" do 
  describe "as a visitor" do 
    before(:each) do
      @aquarium = Aquarium.create!(name: "Forest", water_type: "Fresh", dirty: false, gal_size: 500)
      @log = MaintenanceLog.create!(maintenance_person: "Dave", water_change: true, maintenance_duration_minutes: 40, aquarium_id: @aquarium.id)
    end

    # User Story 4
    it "shows log id and attributes" do
      visit "/maintenance_logs/#{@log.id}"

      expect(page).to have_content(@log.maintenance_person)
      expect(page).to have_content(@log.water_change)
      expect(page).to have_content(@log.maintenance_duration_minutes)
    end
  end
end