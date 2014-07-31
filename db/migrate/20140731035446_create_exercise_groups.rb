class CreateExerciseGroups < ActiveRecord::Migration
  def change
    create_table :exercise_groups do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
