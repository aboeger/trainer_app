# == Schema Information
#
# Table name: appointments
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  appointment__date :datetime
#  notes             :text
#  created_at        :datetime
#  updated_at        :datetime
#

class Appointment < ActiveRecord::Base
end
