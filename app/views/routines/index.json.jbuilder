json.array!(@routines) do |routine|
  json.extract! routine, :id, :name, :date_created
  json.url routine_url(routine, format: :json)
end
