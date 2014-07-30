# == Schema Information
#
# Table name: reminders
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  reminder_date :datetime
#  notes         :text
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class ReminderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
