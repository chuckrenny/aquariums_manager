class MaintenanceLog < ApplicationRecord
  belongs_to :aquarium

  validates :maintenance_person, presence: true 
  validates :water_change, exclusion:[nil]
  validates :maintenance_duration_minutes, presence: true 
end


