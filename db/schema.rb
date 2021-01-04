# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_11_212744) do

  create_table "appointments", force: :cascade do |t|
    t.integer "client_id"
    t.integer "designer_id"
    t.string "date"
    t.string "time"
    t.string "project_type"
    t.string "location"
    t.string "timeline"
    t.integer "budget"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "phone_number"
    t.string "email"
  end

  create_table "designers", force: :cascade do |t|
    t.string "name"
    t.string "yrs_exp"
    t.string "bio"
  end

end
