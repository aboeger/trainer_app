class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.datetime :appointment__date
      t.text :notes

      t.timestamps
    end
  end
end
