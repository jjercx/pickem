# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_02_035302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.bigint "local_team_id", null: false
    t.bigint "visitor_team_id", null: false
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["local_team_id"], name: "index_games_on_local_team_id"
    t.index ["visitor_team_id"], name: "index_games_on_visitor_team_id"
  end

  create_table "picks", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "question_id", null: false
    t.integer "right_option"
    t.date "date"
    t.integer "option_a_count", default: 0
    t.integer "option_b_count", default: 0
    t.float "option_a_percent", default: 0.0
    t.float "option_b_percent", default: 0.0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_picks_on_game_id"
    t.index ["question_id"], name: "index_picks_on_question_id"
  end

  create_table "player_picks", force: :cascade do |t|
    t.bigint "pick_id", null: false
    t.bigint "player_id", null: false
    t.integer "selected_option"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pick_id"], name: "index_player_picks_on_pick_id"
    t.index ["player_id"], name: "index_player_picks_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "games", "teams", column: "local_team_id"
  add_foreign_key "games", "teams", column: "visitor_team_id"
  add_foreign_key "picks", "games"
  add_foreign_key "picks", "questions"
  add_foreign_key "player_picks", "picks"
  add_foreign_key "player_picks", "players"
end
