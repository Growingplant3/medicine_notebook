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

ActiveRecord::Schema.define(version: 2020_05_21_144650) do

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
    t.date "record_time"
    t.integer "systolic_blood_pressure"
    t.integer "diastolic_blood_pressure"
    t.integer "pulse"
    t.integer "blood_sugar"
    t.text "attached_comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drug_informations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "medicine_notebook_record_id"
    t.string "drug_name"
    t.integer "medical_effect"
    t.float "daily_dose"
    t.integer "prescription_days"
    t.boolean "crush"
    t.boolean "shading"
    t.boolean "one_dose_package"
    t.integer "tablet_color"
    t.string "attention"
    t.string "remaining_medicine", default: "0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "how_to_takes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "drug_information_id"
    t.float "number_of_doses"
    t.integer "when_to_take"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicine_notebook_records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pharmacy_id"
    t.time "date_of_issue"
    t.time "date_of_dispensing"
    t.string "medical_institution"
    t.string "doctor_name"
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
    t.date "birthday"
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
