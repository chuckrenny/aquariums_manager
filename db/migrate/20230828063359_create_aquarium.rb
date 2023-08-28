class CreateAquarium < ActiveRecord::Migration[7.0]
  def change
    create_table :aquariums do |t|
      t.string :name
      t.string :water_type
      t.boolean :dirty
      t.integer :gal_size

      t.timestamps
    end
  end
end
