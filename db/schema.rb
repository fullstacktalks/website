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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130404225657) do

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "location"
    t.datetime "date"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "events_people", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "person_id"
  end

  add_index "events_people", ["event_id", "person_id"], :name => "index_events_people_on_event_id_and_person_id"
  add_index "events_people", ["person_id", "event_id"], :name => "index_events_people_on_person_id_and_event_id"

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "company"
    t.string   "position"
  end

  create_table "talks", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "person_id"
    t.integer  "event_id"
  end

end
