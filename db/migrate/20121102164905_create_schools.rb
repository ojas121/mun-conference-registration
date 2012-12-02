class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :school_name
      t.string :school_address
      t.string :email
      t.integer :max_students
      t.integer :user_id
      t.references :conference
    
      t.timestamps
    end
    add_index :schools, :conference_id
  end
end
