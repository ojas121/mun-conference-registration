class SchoolsHaveAndBelongToManyCountries < ActiveRecord::Migration
  def self.up
    create_table :countries_schools, :id => false do |t|
      t.references :country, :school
    end
  end

  def self.down
    drop_table :countries_schools
  end
end
