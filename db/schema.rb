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

ActiveRecord::Schema.define(:version => 20130204231000) do

  create_table "beverages", :force => true do |t|
    t.string   "type"
    t.integer  "size"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "beverages", ["order_id"], :name => "index_beverages_on_order_id"

  create_table "burgers", :force => true do |t|
    t.string   "meat"
    t.string   "cheese"
    t.string   "bun"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "burgers", ["order_id"], :name => "index_burgers_on_order_id"

  create_table "orders", :force => true do |t|
    t.text     "customer"
    t.decimal  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "side_dishes", :force => true do |t|
    t.string   "type"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "side_dishes", ["order_id"], :name => "index_side_dishes_on_order_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
