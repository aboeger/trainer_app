json.array!(@event_reminders) do |event_reminder|
  json.extract! event_reminder, :id, :title, :notes
  json.start event_reminder.start
  json.end event_reminder.end
  json.url event_reminder_url(event_reminder, format: :html)
end