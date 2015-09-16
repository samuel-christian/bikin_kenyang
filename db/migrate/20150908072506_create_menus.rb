class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
