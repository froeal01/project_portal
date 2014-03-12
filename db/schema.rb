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

ActiveRecord::Schema.define(version: 20140312220422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "achievements", force: true do |t|
    t.string   "achievement_name"
    t.string   "achievement_category"
    t.integer  "achievement_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_of_projects", force: true do |t|
    t.string   "type_of_project"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "comment_body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_tags", force: true do |t|
    t.integer  "post_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "post_subject"
    t.text     "post_body"
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_roles", force: true do |t|
    t.integer  "project_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_tags", force: true do |t|
    t.integer  "project_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "project_title"
    t.text     "project_body"
    t.string   "project_skill_level"
    t.integer  "estimated_weekly_hours"
    t.integer  "number_of_developers_needed", default: 2
    t.datetime "next_stand_up"
    t.datetime "deadline"
    t.string   "deadline_reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["project_title"], name: "index_projects_on_project_title", unique: true, using: :btree

  create_table "roles", force: true do |t|
    t.string   "role_name"
    t.string   "account_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "language"
    t.string   "taggable_type"
    t.integer  "taggable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_achievements", force: true do |t|
    t.integer  "user_bio_id"
    t.integer  "achievement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_bios", force: true do |t|
    t.string   "about_me"
    t.hstore   "user_languages"
    t.integer  "reputation"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_projects", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "e_mail"
    t.string   "account_name"
    t.string   "first_name"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["account_name"], name: "index_users_on_account_name", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
