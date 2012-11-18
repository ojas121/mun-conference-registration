class AddLongitudeToConferences < ActiveRecord::Migration
  def change
    add_column :conferences, :longitude, :float

  end
end
