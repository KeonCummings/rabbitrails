class CreateMenu < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :meal
      t.string :type
      t.string :times_served
      t.string :days_served
      t.string :notes
      t.string :price
    end
  end
end
