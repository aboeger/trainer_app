class CreateExercisesRoutinesJoiningTable < ActiveRecord::Migration
  def change
    create_table :exercises_routines, id: false do |t|
      t.belongs_to :exercise
      t.belongs_to :routine
    end
 
    add_index(:exercises_routines, [:exercise_id, :routine_id], :unique => true)
  end
end
