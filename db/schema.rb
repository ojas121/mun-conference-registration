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

ActiveRecord::Schema.define(:version => 20121127203329) do

  create_table "committee_schools", :force => true do |t|
    t.integer  "committee_id"
    t.integer  "school_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "committees", :force => true do |t|
    t.string   "committee_name"
    t.integer  "num_delegates"
    t.integer  "conference_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "list_id"
  end

  create_table "conferences", :force => true do |t|
    t.string   "conference_title"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "host"
    t.string   "venue"
    t.text     "conference_details"
    t.boolean  "is_active"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
  end

  create_table "countries", :force => true do |t|
    t.string "country_name"
  end

  create_table "country_lists", :force => true do |t|
    t.integer  "country_id"
    t.integer  "list_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "country_schools", :force => true do |t|
    t.integer  "country_id"
    t.integer  "school_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "delegates", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "nationality"
    t.integer  "school_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "lists", :force => true do |t|
    t.string   "list_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "schools", :force => true do |t|
    t.string   "school_name"
    t.string   "school_address"
    t.integer  "max_students"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "email"
    t.integer  "conference_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "nationality"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
