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

ActiveRecord::Schema.define(version: 20150323181714) do

  create_table "comments", force: :cascade do |t|
    t.text     "description", limit: 65535
    t.integer  "rating_id",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "post_votes", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "post_id",    limit: 4
    t.integer  "value",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "post_votes", ["post_id"], name: "index_post_votes_on_post_id", using: :btree
  add_index "post_votes", ["user_id"], name: "index_post_votes_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "rankings", force: :cascade do |t|
    t.integer  "votes",      limit: 4
    t.float    "avg_score",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "originality",   limit: 4
    t.integer  "impact",        limit: 4
    t.integer  "practicality",  limit: 4
    t.integer  "measurability", limit: 4
    t.integer  "applicability", limit: 4
    t.integer  "comment_id",    limit: 4
    t.integer  "post_id",       limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "ratings", ["post_id"], name: "index_ratings_on_post_id", using: :btree

  create_table "team_members", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "type",       limit: 255
    t.integer  "team_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "team_members", ["team_id"], name: "index_team_members_on_team_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.integer  "post_id",        limit: 4
    t.integer  "team_member_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "teams", ["post_id"], name: "index_teams_on_post_id", using: :btree
  add_index "teams", ["team_member_id"], name: "index_teams_on_team_member_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
