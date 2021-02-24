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

ActiveRecord::Schema.define(version: 2021_02_23_084242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.bigint "member_id"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.date "date_joined"
    t.date "date_left"
    t.date "birthday"
    t.boolean "monday", default: false
    t.boolean "tuesday", default: false
    t.boolean "wednesday", default: false
    t.boolean "thursday", default: false
    t.boolean "friday", default: false
    t.string "gender"
    t.string "ethnicity"
    t.string "iwi"
    t.string "language"
    t.string "immunisations_received"
    t.text "emergency_alternative_contact"
    t.boolean "hepatitis_b", default: false
    t.boolean "polio", default: false
    t.boolean "diptheria", default: false
    t.boolean "tetanus", default: false
    t.boolean "pertussis", default: false
    t.boolean "hib", default: false
    t.boolean "measles", default: false
    t.boolean "rubella", default: false
    t.boolean "pneumococcal", default: false
    t.boolean "allows_photos", default: false
    t.boolean "excursions", default: false
    t.boolean "phone_list", default: false
    t.boolean "assoc_phone_list", default: false
    t.boolean "sunscreen", default: false
    t.boolean "insect_repellant", default: false
    t.boolean "arnica", default: false
    t.index ["member_id"], name: "index_children_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "family_id", null: false
    t.string "attending_parent"
    t.date "date_joined"
    t.date "date_left"
    t.text "comments"
    t.string "parents"
    t.string "parents_email"
    t.string "alternate_contact"
    t.string "mobile"
    t.string "address"
    t.date "first_aid_expiry"
    t.string "duty_day"
    t.boolean "staff"
    t.boolean "life_member"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_phone"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
