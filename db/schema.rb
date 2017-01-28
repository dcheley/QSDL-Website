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

ActiveRecord::Schema.define(version: 20170128060557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "trainer_id"
    t.integer  "trainee_id"
    t.datetime "event_start_time"
    t.datetime "event_end_time"
    t.boolean  "event_invitation_status"
    t.boolean  "event"
    t.string   "summary"
    t.string   "google_event_id"
    t.decimal  "latitude",                precision: 9, scale: 6
    t.decimal  "longitude",               precision: 9, scale: 6
    t.string   "address"
  end

  create_table "authentications", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["provider", "uid"], name: "index_authentications_on_provider_and_uid", using: :btree
  end

  create_table "availabilities", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "day_1",         default: [],              array: true
    t.string   "day_2",         default: [],              array: true
    t.string   "day_3",         default: [],              array: true
    t.string   "day_4",         default: [],              array: true
    t.string   "day_5",         default: [],              array: true
    t.string   "day_6",         default: [],              array: true
    t.string   "day_7",         default: [],              array: true
    t.integer  "user_id"
    t.string   "next_six_days", default: [],              array: true
  end

  create_table "bars", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "weightlifting", default: false
    t.boolean  "crossfit",      default: false
    t.boolean  "yoga",          default: false
    t.boolean  "cardio",        default: false
    t.boolean  "running",       default: false
    t.boolean  "squash",        default: false
    t.boolean  "boxing",        default: false
    t.integer  "user_id"
    t.boolean  "kickboxing",    default: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "division"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                                                    null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "address"
    t.boolean  "trainer",                                  default: false
    t.string   "password_digest"
    t.decimal  "latitude",         precision: 9, scale: 6
    t.decimal  "longitude",        precision: 9, scale: 6
    t.text     "bio"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
