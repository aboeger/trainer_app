class CreateEventAppointments < ActiveRecord::Migration
  def change
    create_table :event_appointments do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.text :notes

      t.timestamps
    end
  end
end
