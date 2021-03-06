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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120325225424) do

  create_table "bad_points", :force => true do |t|
    t.text     "text"
    t.integer  "idea_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "bad_points", ["idea_id"], :name => "index_bad_points_on_idea_id"

  create_table "consideration_points", :force => true do |t|
    t.text     "text"
    t.integer  "idea_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "consideration_points", ["idea_id"], :name => "index_consideration_points_on_idea_id"

  create_table "good_points", :force => true do |t|
    t.text     "text"
    t.integer  "idea_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "good_points", ["idea_id"], :name => "index_good_points_on_idea_id"

  create_table "ideas", :force => true do |t|
    t.string   "name"
    t.string   "description", :limit => 512
    t.boolean  "is_private"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "site_suggestions", :force => true do |t|
    t.string   "email"
    t.string   "text"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
