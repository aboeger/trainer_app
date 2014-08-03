class CreateEventReminders < ActiveRecord::Migration
  def change
    create_table :event_reminders do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.text :notes

      t.timestamps
    end
  end
end
