class CreateDelegateAssignments < ActiveRecord::Migration
  def change
    create_table :delegate_assignments do |t|
      t.integer :delegate_id
      t.integer :country_id
      t.integer :committee_id
      t.integer :conference_id

      t.timestamps
    end
  end
end
