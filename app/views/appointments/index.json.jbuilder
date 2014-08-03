json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :name, :notes
  json.start appointment_date.starttime
  json.url appointment_url(appointment, format: :html)
end
