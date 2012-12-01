class CreateDelegates < ActiveRecord::Migration
  def change
    create_table :delegates do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :date_of_birth
      t.string :nationality
      t.references :school
      t.integer :country_id
      t.integer :committee_id

      t.timestamps
    end

    add_index :delegates, :school_id
  end
end
