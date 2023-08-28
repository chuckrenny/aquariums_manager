# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_28_081713) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aquariums", force: :cascade do |t|
    t.string "name"
    t.string "water_type"
    t.boolean "dirty"
    t.integer "gal_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maintenance_logs", force: :cascade do |t|
    t.string "maintenance_person"
    t.boolean "water_change"
    t.integer "maintenance_duration_minutes"
    t.bigint "aquarium_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aquarium_id"], name: "index_maintenance_logs_on_aquarium_id"
  end

  add_foreign_key "maintenance_logs", "aquariums"
end
