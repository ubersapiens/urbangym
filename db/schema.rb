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

ActiveRecord::Schema.define(:version => 20130418142937) do

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "gyms", :force => true do |t|
    t.string   "full_street_address"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "gyms_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "gym_id"
  end

  add_index "gyms_users", ["gym_id", "user_id"], :name => "index_gyms_users_on_gym_id_and_user_id", :unique => true
  add_index "gyms_users", ["gym_id"], :name => "index_gyms_users_on_gym_id"
  add_index "gyms_users", ["user_id"], :name => "index_gyms_users_on_user_id"

  create_table "user_exercises", :force => true do |t|
    t.integer  "user_id"
    t.integer  "exercise_id"
    t.integer  "reps"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "user_exercises", ["exercise_id"], :name => "index_user_exercises_on_exercise_id"
  add_index "user_exercises", ["user_id"], :name => "index_user_exercises_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "name"
    t.date     "date_of_birth"
    t.text     "my_workout"
    t.text     "my_diet"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
