# == Schema Information
#
# Table name: contacts
#
#  id               :integer          not null, primary key
#  type_id          :integer
#  first_name       :string(255)
#  last_name        :string(255)
#  email            :string(255)
#  primary_number   :string(255)
#  secondary_number :string(255)
#  street_address1  :string(255)
#  street_address2  :string(255)
#  city             :string(255)
#  state            :string(255)
#  zip_code         :string(255)
#  birth_date       :string(255)
#  height           :string(255)
#  weight           :decimal(, )
#  created_at       :datetime
#  updated_at       :datetime
#

class Contact < ActiveRecord::Base
  belongs_to :type
end
