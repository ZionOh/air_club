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

ActiveRecord::Schema.define(version: 20160325022835) do

  create_table "agals", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.text     "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "anncts", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.text     "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "msg"
    t.integer  "yblog_id"
    t.integer  "oblog_id"
    t.integer  "annct_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "egals", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.text     "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "ggals", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.text     "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "oblogs", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.text     "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "classid"
    t.string   "image"
    t.string   "phone"
    t.string   "aloca"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "yblogs", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.text     "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

end
