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

ActiveRecord::Schema.define(version: 20151217182235) do

  create_table "infopages", force: :cascade do |t|
    t.string   "img_url"
    t.integer  "course"
    t.string   "name"
    t.string   "faculty"
    t.string   "adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.integer "matlog"
    t.integer "ptms"
    t.boolean "differential_equations"
    t.integer "user_id"
    t.integer "number"
    t.integer "linal"
    t.integer "discrete_math"
    t.integer "toi"
  end

  add_index "semesters", ["user_id"], name: "index_semesters_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.string   "email"
    t.string   "persistence_token"
    t.string   "password_salt"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "crypted_password"
    t.string   "img_url"
    t.string   "adress"
    t.string   "faculty"
    t.string   "password_digest"
  end

  create_table "users_tables", force: :cascade do |t|
  end

end
