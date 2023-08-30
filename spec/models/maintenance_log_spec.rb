RSpec.describe MaintenanceLog, type: :model do
  describe 'relationships' do
    it { should belong_to(:aquarium) }
  end

  describe 'validations' do
    it { should validate_presence_of(:maintenance_person) }
    it { should validate_presence_of(:maintenance_duration_minutes) }
    it { should allow_value(false).for(:water_change) }
    it { should allow_value(true).for(:water_change) }
  end
end
