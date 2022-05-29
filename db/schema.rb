ActiveRecord::Schema.define(version: 20220529201133) do

  create_table "logistics", force: :cascade do |t|
    t.string "product"
    t.string "color"
    t.string "size"
    t.string "quantity"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
