json.array!(@reminders) do |reminder|
  json.extract! reminder, :id, :name, :reminder_date, :notes
  json.url reminder_url(reminder, format: :json)
end
