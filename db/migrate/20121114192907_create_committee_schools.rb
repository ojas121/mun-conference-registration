class CreateCommitteeSchools < ActiveRecord::Migration
  def change
    create_table :committee_schools do |t|
      t.integer :committee_id
      t.integer :school_id

      t.timestamps
    end
  end
end
