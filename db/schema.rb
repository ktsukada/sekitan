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

ActiveRecord::Schema.define(:version => 20121213133325) do

  create_table "car_names", :force => true do |t|
    t.integer  "maker_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cars", :force => true do |t|
    t.integer  "maker_id"
    t.integer  "car_name_id"
    t.string   "grade"
    t.integer  "price"
    t.date     "saled_at"
    t.string   "notes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "tel_no"
    t.date     "start_at"
    t.date     "end_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.integer  "staff_id"
    t.date     "first_year"
    t.integer  "run"
    t.date     "shaken"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "functions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "makers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.integer  "staff_id"
    t.integer  "function_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "staffs", :force => true do |t|
    t.integer  "store_id"
    t.string   "login_id"
    t.string   "password"
    t.string   "name"
    t.date     "birthday"
    t.string   "tel_no"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stores", :force => true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.string   "address"
    t.string   "tel_no"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
