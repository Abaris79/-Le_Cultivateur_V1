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

ActiveRecord::Schema.define(version: 20180209081004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gigs", force: :cascade do |t|
    t.string "date"
    t.string "time"
    t.bigint "salle_id"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_gigs_on_project_id"
    t.index ["salle_id"], name: "index_gigs_on_salle_id"
  end

  create_table "oeuvres", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.integer "date"
    t.float "duration"
    t.string "reference"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_oeuvres_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "cost"
    t.integer "min_span_stage"
    t.string "acoustic"
    t.string "description"
    t.integer "duration"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "salles", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.integer "jauge"
    t.integer "stage_span"
    t.string "acoustic"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "zip"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_salles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "gigs", "projects"
  add_foreign_key "gigs", "salles"
  add_foreign_key "oeuvres", "projects"
  add_foreign_key "projects", "users"
  add_foreign_key "salles", "users"
end
