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

ActiveRecord::Schema.define(version: 20170824171227) do

  create_table "agents", force: :cascade do |t|
    t.integer "agent_id"
    t.string "name"
    t.integer "CallDetail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["CallDetail_id"], name: "index_agents_on_CallDetail_id"
  end

  create_table "call_details", force: :cascade do |t|
    t.integer "call_id"
    t.string "word"
    t.float "start_time"
    t.float "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end