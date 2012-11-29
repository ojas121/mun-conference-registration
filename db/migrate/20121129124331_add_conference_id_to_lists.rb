class AddConferenceIdToLists < ActiveRecord::Migration
  def change
    add_column :lists, :conference_id, :integer

  end
end
