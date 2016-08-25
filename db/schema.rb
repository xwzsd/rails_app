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

ActiveRecord::Schema.define(version: 20160824205103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "custom_houses", force: :cascade do |t|
    t.string   "custom_name"
    t.string   "custom_value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "house_id"
  end

  add_index "custom_houses", ["custom_name", "custom_value"], name: "index_custom_houses_on_custom_name_and_custom_value", using: :btree

  create_table "houses", force: :cascade do |t|
    t.integer  "house_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "houses", ["house_number"], name: "index_houses_on_house_number", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.integer  "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "people", ["name"], name: "index_people_on_name", unique: true, using: :btree

  create_table "streets", force: :cascade do |t|
    t.string   "street_name"
    t.integer  "house_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "streets", ["street_name", "house_id"], name: "index_streets_on_street_name_and_house_id", using: :btree

  add_foreign_key "people", "houses"
  add_foreign_key "streets", "houses"
end
