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

ActiveRecord::Schema.define(version: 20151204230328) do

  create_table "character_parties", force: :cascade do |t|
    t.integer "character_id"
    t.integer "party_id"
  end

  add_index "character_parties", ["character_id"], name: "index_character_parties_on_character_id"
  add_index "character_parties", ["party_id"], name: "index_character_parties_on_party_id"

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "hair_color"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.string   "style"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
