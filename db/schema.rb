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

ActiveRecord::Schema.define(version: 20220529201133) do

  create_table "logistics", force: :cascade do |t|
    t.string "Inventory"
    t.string "List"
    t.string "product"
    t.string "color"
    t.string "size"
    t.string "quantity"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "logistics"
    t.string "discarded_at"
    t.string "datetime"
    t.string "message"
    t.index ["discarded_at"], name: "index_logistics_on_discarded_at"
  end

end
