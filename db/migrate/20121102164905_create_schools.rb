class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :school_name
      t.string :school_address
      t.string :email
      t.integer :max_students
      t.integer :conference_id
    
      t.timestamps
    end
  end
end
