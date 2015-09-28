class AddRatingAndDiscountToMenu < ActiveRecord::Migration
  def change
  	add_column :menus, :discount, :decimal, :precision => 5, :scale => 2, :default => 0.0
  	add_column :menus, :rating, :integer, :default => 0
  end
end
