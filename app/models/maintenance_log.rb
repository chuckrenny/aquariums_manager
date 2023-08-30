class MaintenanceLog < ApplicationRecord
  belongs_to :aquarium

  validates :maintenance_person, presence: true 
  validates :maintenance_duration_minutes, presence: true 
  validates :water_change, inclusion: [true, false]
end
