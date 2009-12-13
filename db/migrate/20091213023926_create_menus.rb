class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.integer :id
      t.integer :parent_id
      t.text :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
