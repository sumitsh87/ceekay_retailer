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

ActiveRecord::Schema.define(version: 20160613182455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "retailers", force: true do |t|
    t.string   "retailer_code"
    t.string   "retailer_name"
    t.string   "dse_code"
    t.string   "route_no"
    t.string   "address"
    t.decimal  "latitude",      precision: 9, scale: 6, default: 0.0
    t.decimal  "longitude",     precision: 9, scale: 6, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uploads", force: true do |t|
    t.string   "file_name",  null: false
    t.string   "path",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.boolean  "is_first_logged_in",            default: false
    t.boolean  "is_admin",                      default: false
    t.string   "dse_code"
    t.string   "name"
    t.date     "dob"
    t.string   "contact_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "access_token",       limit: 20
  end

end
