class AddGroupIdToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :group_id, :integer
  end
end
