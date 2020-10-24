# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_24_214857) do

  create_table "games", force: :cascade do |t|
    t.integer "black"
    t.integer "white"
    t.string "name"
    t.boolean "ranked"
    t.string "speed"
    t.string "outcome"
    t.boolean "black_lost"
    t.boolean "white_lost"
    t.boolean "annulled"
    t.datetime "started"
    t.datetime "ended"
    t.text "historical_ratings"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.boolean "professional"
    t.integer "ranking"
    t.float "rating"
    t.string "country"
    t.string "language"
    t.text "about"
    t.boolean "supporter"
    t.boolean "is_moderator"
    t.boolean "is_bot"
    t.string "icon"
    t.datetime "registration_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "game_id", null: false
    t.text "win_rates"
    t.text "scores"
    t.string "type"
    t.string "engine"
    t.string "engine_version"
    t.string "network"
    t.string "network_size"
    t.datetime "date"
    t.string "strength"
    t.float "win_rate"
    t.text "moves"
    t.integer "total_moves"
    t.integer "black_tier_1"
    t.integer "black_tier_2"
    t.integer "black_tier_3"
    t.integer "black_tier_4"
    t.integer "white_tier_1"
    t.integer "white_tier_2"
    t.integer "white_tier_3"
    t.integer "white_tier_4"
    t.integer "black_total"
    t.integer "white_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_reviews_on_game_id"
  end

  add_foreign_key "reviews", "games"
end
