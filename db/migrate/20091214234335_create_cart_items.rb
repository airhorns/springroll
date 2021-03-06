class CreateCartItems < ActiveRecord::Migration
  def self.up
    create_table :cart_items do |t|
      t.integer :id
      t.integer :cart_id
      t.integer :item_id
      t.integer :size_id
      t.integer :quantity
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :cart_items
  end
end
