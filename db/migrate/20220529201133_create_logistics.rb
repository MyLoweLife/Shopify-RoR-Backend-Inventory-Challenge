class CreateLogistics < ActiveRecord::Migration[5.1]
  def change
    create_table :logistics do |t|
      t.string :Inventory
      t.string :List
      t.string :product
      t.string :color
      t.string :size
      t.string :quantity
      t.string :location, unique: true
      t.timestamps
      t.string :logistics, :discarded_at, :datetime
      t.string :logistics, :discarded_at, :message
    end
    add_index :logistics, :discarded_at
  end
end
