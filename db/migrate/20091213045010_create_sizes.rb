class CreateSizes < ActiveRecord::Migration
  def self.up
    create_table :sizes do |t|
      t.integer :id
      t.integer :item_id
      t.text :name
      t.integer :price_in_cents
      t.string :currency
      t.timestamps
    end
  end

  def self.down
    drop_table :sizes
  end
end
