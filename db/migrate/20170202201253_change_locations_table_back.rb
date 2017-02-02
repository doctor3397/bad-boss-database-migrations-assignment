class ChangeLocationsTableBack < ActiveRecord::Migration[5.0]
  def change
    change_table :locations do |t|
      t.string :name
      t.remove :city
      t.remove :weather
    end
  end
end
