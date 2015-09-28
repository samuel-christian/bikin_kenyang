class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.references :menu, index: true, foreign_key: true
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
