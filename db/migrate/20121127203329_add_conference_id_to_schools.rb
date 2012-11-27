class AddConferenceIdToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :conference_id, :integer

  end
end
