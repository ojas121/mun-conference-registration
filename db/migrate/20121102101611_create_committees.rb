class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.string :committee_name
      t.integer :num_delegates
      t.integer :list_id
      t.references :conference

      t.timestamps
    end
    add_index :committees, :conference_id
  end
end
