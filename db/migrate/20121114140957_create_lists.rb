class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :list_name
      t.references :conference

      t.timestamps
    end
  end
end
