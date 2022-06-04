ActiveRecord::Schema.define(version: 20220529201133) do

  def change
    create_table "logistics", force: :cascade do |t|
      t.string "product", null: false
      t.string "color", null: false
      t.string "size", null: false
      t.string "quantity", null: false
      t.string "location", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    add_index "location", :location, unique: true
  end
end
