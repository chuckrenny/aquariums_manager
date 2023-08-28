class Aquarium < ApplicationRecord
  self.table_name = "aquariums"

  has_many :maintenance_logs
end