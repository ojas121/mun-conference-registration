class AddLatitudeToConferences < ActiveRecord::Migration
  def change
    add_column :conferences, :latitude, :float

  end
end
