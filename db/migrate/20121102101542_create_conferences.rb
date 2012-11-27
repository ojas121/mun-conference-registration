class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :conference_title
      t.date :start_date
      t.date :end_date
      t.string :host
      t.string :venue
      t.text :conference_details
      t.boolean :is_active

      t.timestamps
    end
  end
end
