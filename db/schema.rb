# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170113003406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bizs.js", force: :cascade do |t|
    t.string   "fact"
    t.string   "dimension",                array: true
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "dimension_1"
    t.string   "measures_1"
    t.string   "dimension_2"
    t.string   "measures_2"
    t.string   "dimension_3"
    t.string   "measures_3"
    t.string   "dimension_4"
    t.string   "measures_4"
    t.string   "dimension_5"
    t.string   "measures_5"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "pay_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "sku"
    t.string   "type"
    t.string   "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.decimal  "total_amt",      precision: 8, scale: 2
    t.integer  "salesperson_id"
    t.integer  "product_id"
    t.integer  "customer_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "sales", ["customer_id"], name: "index_sales_on_customer_id", using: :btree
  add_index "sales", ["product_id"], name: "index_sales_on_product_id", using: :btree
  add_index "sales", ["salesperson_id"], name: "index_sales_on_salesperson_id", using: :btree

  create_table "salespeople", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "age"
    t.string   "height"
    t.string   "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "sales", "customers"
  add_foreign_key "sales", "products"
  add_foreign_key "sales", "salespeople"
end
