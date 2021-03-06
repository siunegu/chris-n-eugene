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

ActiveRecord::Schema.define(version: 20141214121546) do

  create_table "activities", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attraction_activities", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attraction_places", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attractions", force: true do |t|
    t.string   "attraction_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "place_id"
  end

  create_table "attractions_places", id: false, force: true do |t|
    t.integer "attraction_id", null: false
    t.integer "place_id",      null: false
  end

  add_index "attractions_places", ["attraction_id", "place_id"], name: "index_attractions_places_on_attraction_id_and_place_id"
  add_index "attractions_places", ["place_id", "attraction_id"], name: "index_attractions_places_on_place_id_and_attraction_id"

  create_table "itineraries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itinerary_places", force: true do |t|
    t.integer  "place_id"
    t.integer  "itinerary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.text     "description"
    t.string   "languages"
    t.string   "timezone"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.integer  "attraction_id"
  end

  create_table "region_places", force: true do |t|
    t.integer  "place_id"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "name"
    t.string   "climate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
