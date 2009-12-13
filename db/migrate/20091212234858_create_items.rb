class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.integer :menu_id
      t.integer :restaurant_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
