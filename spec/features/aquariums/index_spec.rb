require "rails_helper"

RSpec.describe "Aquarium Index" do 
  describe "as a visitor" do 
    before(:each) do
      @aquarium_1 = Aquarium.create!(name: "Forest", water_type: "Fresh", dirty: false, gal_size: 500, created_at: 5.days.ago)
      @aquarium_2 = Aquarium.create!(name: "Titanic", water_type: "Salt", dirty: true, gal_size: 999999, created_at: 1.days.ago)
    end

    # User Story 1
    it "can see the name of each aquarium record" do
      visit '/aquariums'

      expect(page).to have_content(@aquarium_1.name)
      expect(page).to have_content(@aquarium_2.name)
    end

    # User Story 6
    it "sees records ordered by recently created" do
      visit '/aquariums'

      expect(page).to have_content(@aquarium_1.name)
      expect(page).to have_content(@aquarium_2.name)

      expect(@aquarium_2.name).to appear_before(@aquarium_1.name)
    end

    # User Story 9
    it "shows a link at the top that redirects to aquarium index" do
      visit "/"

      expect(page).to have_link("Aquariums", href: '/aquariums')
    end
  end
end