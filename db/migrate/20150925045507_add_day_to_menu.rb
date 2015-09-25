class AddDayToMenu < ActiveRecord::Migration
  def change
  	add_column :menus, :day, :integer
  end
end
