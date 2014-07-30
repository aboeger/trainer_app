# == Schema Information
#
# Table name: routines
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  date_created :datetime
#  created_at   :datetime
#  updated_at   :datetime
#

class Routine < ActiveRecord::Base
  has_and_belongs_to_many :exercises
end
