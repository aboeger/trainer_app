json.array!(@event_appointments) do |event_appointment|
  json.extract! event_appointment, :id, :title, :notes
  json.start event_appointment.start
  json.end event_appointment.end
  json.url event_appointment_url(event_appointment, format: :html)
end
