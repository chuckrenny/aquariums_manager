class CreateMaintenanceLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenance_logs do |t|
      t.string :maintenance_person
      t.boolean :water_change
      t.integer :maintenance_duration_minutes
      t.references :aquarium, null: false, foreign_key: { to_table: :aquariums }

      t.timestamps
    end
  end
end
