class Aquarium < ApplicationRecord
  self.table_name = "aquariums"

  has_many :maintenance_logs

  # in order for the obj to be created, name has to be present
  validates :name, presence: true 
  validates :water_type, presence: true 
  validates :dirty, inclusion: [true, false]
  validates :gal_size, presence: true 

  def self.most_recent
    order(created_at: :desc)
  end
end