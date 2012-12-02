class CreateDelegationAssignments < ActiveRecord::Migration
  def change
    create_table :delegation_assignments do |t|
      t.integer :list_id
      t.integer :country_id
      t.integer :school_id
      t.references :conference

      t.timestamps
    end
    add_index :delegation_assignments, :conference_id
  end
end
