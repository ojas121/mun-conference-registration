class AddListIdToCommittees < ActiveRecord::Migration
  def change
    add_column :committees, :list_id, :integer

  end
end
