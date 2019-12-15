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

ActiveRecord::Schema.define(version: 2019_12_15_024305) do

  create_table "bankaccounts", force: :cascade do |t|
    t.string "namaakun"
    t.string "namabank"
    t.integer "nomorakun"
    t.string "swiftcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "noinvoice"
    t.date "tanggal"
    t.string "supplier"
    t.integer "telp"
    t.date "paymentdue"
    t.text "desk"
    t.string "namatamu"
    t.string "namaaktifitas"
    t.date "tglaktifitas"
    t.integer "qty"
    t.decimal "totalamount"
    t.string "namaakun"
    t.integer "nomorakun"
    t.string "swiftcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "namabank"
    t.text "address"
  end

  create_table "pakets", force: :cascade do |t|
    t.string "jenispaket"
    t.text "desk"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "supplier"
    t.text "address"
    t.string "email"
    t.integer "telp"
    t.text "termin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tamus", force: :cascade do |t|
    t.integer "kodebooking"
    t.string "namatamu"
    t.integer "qty"
    t.text "hotel"
    t.string "negara"
    t.integer "telp"
    t.string "email"
    t.text "note"
    t.string "jenispaket"
    t.string "namaaktifitas"
    t.string "supplier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "tglaktifitas"
  end

  create_table "tipepakets", force: :cascade do |t|
    t.string "namaaktifitas"
    t.decimal "harga"
    t.text "include"
    t.text "exclude"
    t.string "jenispaket"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "supplier"
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
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
