json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :name, :appointment__date, :notes
  json.url appointment_url(appointment, format: :json)
end
