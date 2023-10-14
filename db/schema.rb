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

ActiveRecord::Schema[7.1].define(version: 2023_10_14_113317) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repairreplacements", force: :cascade do |t|
    t.bigint "repair_id", null: false
    t.bigint "replacement_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["repair_id"], name: "index_repairreplacements_on_repair_id"
    t.index ["replacement_id"], name: "index_repairreplacements_on_replacement_id"
  end

  create_table "repairs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "customer_id", null: false
    t.bigint "vehicle_id", null: false
    t.bigint "typestate_id", null: false
    t.string "estimateddate"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_repairs_on_customer_id"
    t.index ["typestate_id"], name: "index_repairs_on_typestate_id"
    t.index ["user_id"], name: "index_repairs_on_user_id"
    t.index ["vehicle_id"], name: "index_repairs_on_vehicle_id"
  end

  create_table "repairtypeservices", force: :cascade do |t|
    t.bigint "repair_id", null: false
    t.bigint "typeservice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["repair_id"], name: "index_repairtypeservices_on_repair_id"
    t.index ["typeservice_id"], name: "index_repairtypeservices_on_typeservice_id"
  end

  create_table "replacements", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typeservices", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typestates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "carbrand"
    t.string "carmodel"
    t.string "patent"
    t.string "year"
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_vehicles_on_customer_id"
  end

  add_foreign_key "repairreplacements", "repairs"
  add_foreign_key "repairreplacements", "replacements"
  add_foreign_key "repairs", "customers"
  add_foreign_key "repairs", "typestates"
  add_foreign_key "repairs", "users"
  add_foreign_key "repairs", "vehicles"
  add_foreign_key "repairtypeservices", "repairs"
  add_foreign_key "repairtypeservices", "typeservices"
  add_foreign_key "vehicles", "customers"
end
