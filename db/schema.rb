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

ActiveRecord::Schema.define(version: 2021_10_18_025441) do

  create_table "countries", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "continent", null: false
    t.string "region", null: false
    t.decimal "surface_area", precision: 10, scale: 2, null: false
    t.integer "indep_year"
    t.integer "population", null: false
    t.decimal "life_expectancy", precision: 3, scale: 1
    t.decimal "gnp", precision: 10, scale: 2
    t.string "local_name", null: false
    t.string "government_form", null: false
    t.string "head_of_state"
    t.integer "capital"
    t.string "code2", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_countries_on_code", unique: true
  end

  create_table "receipt_details", force: :cascade do |t|
    t.integer "receipt_id", null: false
    t.string "name"
    t.integer "price"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receipt_id"], name: "index_receipt_details_on_receipt_id"
  end

  create_table "receipts", force: :cascade do |t|
    t.integer "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "receipt_details", "receipts"
end
