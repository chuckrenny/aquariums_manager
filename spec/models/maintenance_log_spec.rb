require 'rails_helper'

# test relationship/method/validation we create
RSpec.describe MaintenanceLog, type: :model do
  # look up syntax
  it {should belong_to(:aquarium)} 
  it {should validate_presence_of(:maintenance_person)}
  it {should validate_presence_of(:water_change)}
  it {should validate_presence_of(:maintenance_duration_minutes)}
end
