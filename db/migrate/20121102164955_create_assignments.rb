class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :committee_id
      t.integer :school_id
      t.integer :country_id

      t.timestamps
    end
  end
end
