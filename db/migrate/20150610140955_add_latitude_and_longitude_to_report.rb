class AddLatitudeAndLongitudeToReport < ActiveRecord::Migration
  def change
    add_column :reports, :latitude, :float
    add_column :reports, :longitude, :float
  end
end
