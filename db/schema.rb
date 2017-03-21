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

ActiveRecord::Schema.define(version: 20170321192551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "round_id"
    t.string   "team_catagory"
    t.integer  "game_point"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "team_id_id"
    t.float    "game_time"
    t.index ["team_id_id"], name: "index_games_on_team_id_id", using: :btree
  end

  create_table "groups", force: :cascade do |t|
    t.string   "game"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "team_id"
    t.index ["team_id"], name: "index_groups_on_team_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.string   "team_school"
    t.string   "team_category"
    t.integer  "team_point"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "TeamGroups"
    t.index ["TeamGroups"], name: "index_teams_on_TeamGroups", using: :btree
  end

  add_foreign_key "groups", "teams"
end
