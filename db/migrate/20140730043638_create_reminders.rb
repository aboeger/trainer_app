class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :name
      t.datetime :reminder_date
      t.text :notes

      t.timestamps
    end
  end
end
