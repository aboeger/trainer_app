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

ActiveRecord::Schema.define(version: 20140730043721) do

  create_table "appointments", force: true do |t|
    t.string   "name"
    t.datetime "appointment__date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.integer  "type_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "primary_number"
    t.string   "secondary_number"
    t.string   "street_address1"
    t.string   "street_address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "birth_date"
    t.string   "height"
    t.decimal  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["type_id"], name: "index_contacts_on_type_id"

  create_table "exercises", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises_routines", id: false, force: true do |t|
    t.integer "exercise_id"
    t.integer "routine_id"
  end

  add_index "exercises_routines", ["exercise_id", "routine_id"], name: "index_exercises_routines_on_exercise_id_and_routine_id", unique: true

  create_table "reminders", force: true do |t|
    t.string   "name"
    t.datetime "reminder_date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routines", force: true do |t|
    t.string   "name"
    t.datetime "date_created"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
