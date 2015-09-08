class AddGenderBirthdayToUser < ActiveRecord::Migration
  def change
  	add_column :users, :gender, :tinyint
  	add_column :users, :birthday, :date
  end
end
