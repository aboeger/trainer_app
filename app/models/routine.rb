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
end
