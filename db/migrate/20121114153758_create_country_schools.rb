class CreateCountrySchools < ActiveRecord::Migration
  def change
    create_table :country_schools do |t|
      t.integer :country_id
      t.integer :school_id

      t.timestamps
    end
  end
end
