# == Schema Information
#
# Table name: exercises
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  group_id    :integer
#

class Exercise < ActiveRecord::Base
  has_and_belongs_to_many :routines
  belongs_to :group, class_name: "ExerciseGroup"
end
