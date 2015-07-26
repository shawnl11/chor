json.array!(@chores) do |chore|
  #json.extract! chore, :id, :title, :url, :starttime, :endtime, :allday, :chore_location
  json.title chore.title
  json.start chore.starttime.to_formatted_s(:db)
  json.end chore.endtime.to_formatted_s(:db)
  json.allDay false
  json.url chore_url(chore, format: :html)
end
