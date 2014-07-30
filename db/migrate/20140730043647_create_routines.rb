class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :name
      t.datetime :date_created

      t.timestamps
    end
  end
end
