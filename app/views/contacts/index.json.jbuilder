json.array!(@contacts) do |contact|
  json.extract! contact, :id, :type_id, :first_name, :last_name, :email, :primary_number, :secondary_number, :street_address1, :street_address2, :city, :state, :zip_code, :birth_date, :height, :weight
  json.url contact_url(contact, format: :json)
end
