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

ActiveRecord::Schema.define(:version => 20121126044812) do

  create_table "images", :force => true do |t|
    t.integer   "project_id"
    t.string    "image_file_name"
    t.string    "image_content_type"
    t.integer   "image_file_size"
    t.timestamp "image_updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string    "title",                                     :null => false
    t.string    "client",                                    :null => false
    t.string    "date_added",                                :null => false
    t.text      "brief",                                     :null => false
    t.text      "solution",                                  :null => false
    t.text      "outcome",                                   :null => false
    t.boolean   "is_featured",            :default => false, :null => false
    t.boolean   "is_published",           :default => false, :null => false
    t.integer   "project_type",           :default => 0,     :null => false
    t.timestamp "created_at",                                :null => false
    t.timestamp "updated_at",                                :null => false
    t.string    "thumbnail_file_name"
    t.string    "thumbnail_content_type"
    t.integer   "thumbnail_file_size"
    t.timestamp "thumbnail_updated_at"
    t.boolean   "purchasable",            :default => false, :null => false
    t.string    "purchase_link"
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
