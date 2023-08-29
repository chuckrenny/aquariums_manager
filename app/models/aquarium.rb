class Aquarium < ApplicationRecord
  self.table_name = "aquariums"

  has_many :maintenance_logs

  # in order for the obj to be created, name has to be present
  validates :name, presence: true 
  validates :water_type, presence: true 
  validates :dirty, exclusion:[nil] 
  validates :gal_size, presence: true 
end