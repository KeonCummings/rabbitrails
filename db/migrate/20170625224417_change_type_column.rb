class ChangeTypeColumn < ActiveRecord::Migration[5.1]
  def change
  	rename_column :menus, :type, :meal_type
  end
end
