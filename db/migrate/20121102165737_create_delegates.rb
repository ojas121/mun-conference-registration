class CreateDelegates < ActiveRecord::Migration
  def change
    create_table :delegates do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :date_of_birth
      t.string :nationality
      t.integer :school_id

      t.timestamps
    end
  end
end
