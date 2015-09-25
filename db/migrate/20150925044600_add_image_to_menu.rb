class AddImageToMenu < ActiveRecord::Migration
  def change
  	add_column :menus, :image, :string, :null => :false, :default => ""
  end
end
