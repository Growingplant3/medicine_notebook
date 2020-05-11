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

ActiveRecord::Schema.define(version: 2020_05_11_060010) do

  create_table "activities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "pharmacy_id"
    t.integer "week_day"
    t.boolean "business"
    t.time "open"
    t.time "close"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "conditions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.time "condition_record_time"
    t.integer "morning_systolic_blood_pressure"
    t.integer "morning_diastolic_blood_pressure"
    t.integer "afternoon_systolic_blood_pressure"
    t.integer "afternoon_diastolic_blood_pressure"
    t.integer "evening_systolic_blood_pressure"
    t.integer "evening_diastolic_blood_pressure"
    t.integer "sleep_systolic_blood_pressure"
    t.integer "sleep_diastolic_blood_pressure"
    t.integer "morning_pulse"
    t.integer "afternoon_pulse"
    t.integer "evening_pulse"
    t.integer "sleep_pulse"
    t.integer "morning_blood_sugar"
    t.integer "afternoon_blood_sugar"
    t.integer "evening_blood_sugar"
    t.integer "sleep_blood_sugar"
    t.text "attached_comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pharmacies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "postcode"
    t.string "prefecture_code"
    t.string "address_city"
    t.string "address_street"
    t.string "address_building"
    t.string "normal_telephone_number"
    t.string "abnormal_telephone_number"
    t.text "remarks"
    t.text "opinion"
    t.index ["email"], name: "index_pharmacies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_pharmacies_on_reset_password_token", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.string "name"
    t.string "postcode"
    t.string "prefecture_code"
    t.string "address_city"
    t.string "address_street"
    t.string "address_building"
    t.string "telephone_number"
    t.integer "age"
    t.integer "sex", default: 0, null: false
    t.integer "body_weight"
    t.integer "blood_types", default: 0, null: false
    t.text "side_effect"
    t.text "allergy"
    t.text "sick"
    t.text "operation"
    t.text "remarks"
    t.text "opinion"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
