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

ActiveRecord::Schema.define(version: 2018_06_23_162359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_players", force: :cascade do |t|
    t.integer "role"
    t.integer "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_players_sessions", id: false, force: :cascade do |t|
    t.bigint "game_session_id", null: false
    t.bigint "game_player_id", null: false
    t.index ["game_player_id", "game_session_id"], name: "index_on_game_p_id_and_game_s_id"
    t.index ["game_session_id", "game_player_id"], name: "index_on_game_s_id_and_game_p_id"
  end

  create_table "game_sessions", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "game_type_id"
    t.integer "winner_id"
    t.boolean "completed"
    t.boolean "waiting"
    t.boolean "in_progress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_types", force: :cascade do |t|
    t.string "name"
    t.integer "max_players"
    t.integer "mafia_ratio"
    t.integer "village_ratio"
    t.integer "neutral_ratio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "start_phase"
  end

  create_table "game_types_phases", id: false, force: :cascade do |t|
    t.bigint "game_type_id", null: false
    t.bigint "phase_id", null: false
    t.index ["game_type_id", "phase_id"], name: "index_game_types_phases_on_game_type_id_and_phase_id"
    t.index ["phase_id", "game_type_id"], name: "index_game_types_phases_on_phase_id_and_game_type_id"
  end

  create_table "game_types_roles", id: false, force: :cascade do |t|
    t.bigint "game_type_id", null: false
    t.bigint "role_id", null: false
    t.integer "max_num_of_role_type"
    t.index ["game_type_id", "role_id"], name: "index_game_types_roles_on_game_type_id_and_role_id"
    t.index ["role_id", "game_type_id"], name: "index_game_types_roles_on_role_id_and_game_type_id"
  end

  create_table "phases", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "time"
    t.integer "sequence"
  end

  create_table "powers", force: :cascade do |t|
    t.string "name"
    t.string "effect"
    t.integer "can_target_role_id"
    t.integer "can_target_side_id"
    t.integer "can_use_in_phase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "powers_roles", id: false, force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "power_id", null: false
    t.index ["power_id", "role_id"], name: "index_powers_roles_on_power_id_and_role_id"
    t.index ["role_id", "power_id"], name: "index_powers_roles_on_role_id_and_power_id"
  end

  create_table "powers_targets", id: false, force: :cascade do |t|
    t.bigint "power_id", null: false
    t.bigint "role_id", null: false
    t.index ["power_id", "role_id"], name: "index_powers_targets_on_power_id_and_role_id"
    t.index ["role_id", "power_id"], name: "index_powers_targets_on_role_id_and_power_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.integer "side_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_for_game_types", id: false, force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "game_type_id", null: false
    t.integer "max_num_of_role_type"
    t.index ["game_type_id", "role_id"], name: "index_roles_for_game_types_on_game_type_id_and_role_id"
    t.index ["role_id", "game_type_id"], name: "index_roles_for_game_types_on_role_id_and_game_type_id"
  end

  create_table "sides", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "targets", id: false, force: :cascade do |t|
    t.bigint "power_id", null: false
    t.bigint "role_id", null: false
    t.index ["power_id", "role_id"], name: "index_targets_on_power_id_and_role_id"
    t.index ["role_id", "power_id"], name: "index_targets_on_role_id_and_power_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "username"
    t.text "email"
    t.text "password_digest"
    t.text "activate_selector_token"
    t.text "activate_verifier_token"
    t.boolean "email_verified"
    t.boolean "password_reset_requested"
    t.text "password_reset_selector_token"
    t.text "password_reset_verifier_token"
    t.date "password_reset_token_expire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
