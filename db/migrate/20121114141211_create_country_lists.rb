class CreateCountryLists < ActiveRecord::Migration
  def change
    create_table :country_lists do |t|
      t.integer :country_id
      t.integer :list_id

      t.timestamps
    end
  end
end
