class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.string :committee_name
      t.integer :num_delegates
      t.integer :list_id
      t.integer :conference_id

      t.timestamps
    end
  end
end
