# == Schema Information
#
# Table name: exercise_groups
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class ExerciseGroup < ActiveRecord::Base
  has_many :exercises
end
