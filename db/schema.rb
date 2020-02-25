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

ActiveRecord::Schema.define(version: 2020_02_24_105449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "company_id"
    t.string "vname"
    t.string "nname"
    t.date "birthdate"
    t.string "lwohnort"
    t.datetime "ddate"
    t.datetime "lsdate"
    t.date "bdate"
    t.time "btime"
    t.datetime "wludate"
    t.boolean "approved"
    t.integer "deliveryoption_id"
    t.boolean "provided"
    t.string "created_by"
    t.boolean "deleted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "strasse"
    t.string "hnr"
    t.string "plz"
    t.string "ort"
    t.string "tel"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deliveryoptions", force: :cascade do |t|
    t.string "deloption"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "options", force: :cascade do |t|
    t.date "date"
    t.integer "slots"
    t.integer "bdates"
    t.time "blocktime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "vname"
    t.string "nname"
    t.integer "company_id"
    t.string "password_digest"
    t.string "strasse"
    t.string "hnr"
    t.string "plz"
    t.string "ort"
    t.string "tel"
    t.integer "role"
    t.string "onetimetoken"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
