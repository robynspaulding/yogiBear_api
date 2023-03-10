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

ActiveRecord::Schema[7.0].define(version: 2023_03_14_191601) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "yogi_id", null: false
    t.integer "user_id"
    t.string "date"
    t.string "start_time"
    t.string "end_time"
    t.integer "total_price"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "event_type"
    t.boolean "in_person"
    t.boolean "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "yogi_name"
    t.index ["yogi_id"], name: "index_bookings_on_yogi_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin", default: false
  end

  create_table "yogis", force: :cascade do |t|
    t.string "name"
    t.integer "rate"
    t.string "yoga_type"
    t.text "bio"
    t.string "contact"
    t.string "city"
    t.string "state"
    t.string "available_start_time"
    t.string "available_end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "image"
  end

  add_foreign_key "bookings", "yogis"
end
