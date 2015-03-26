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

ActiveRecord::Schema.define(version: 20150326091111) do

  create_table "tasks", force: :cascade do |t|
    t.integer  "user_story_id"
    t.string   "task"
    t.text     "overview"
    t.string   "owner"
    t.decimal  "effort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "tasks", ["user_story_id"], name: "index_tasks_on_user_story_id"

  create_table "user_stories", force: :cascade do |t|
    t.string   "headline"
    t.string   "user"
    t.string   "capability"
    t.string   "reason"
    t.text     "comments"
    t.text     "acceptance_criteria"
    t.decimal  "size"
    t.boolean  "epic"
    t.boolean  "blocked"
    t.string   "priority"
    t.string   "status"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end