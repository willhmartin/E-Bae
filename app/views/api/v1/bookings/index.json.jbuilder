
json.array! @bookings do |booking|

  json.extract! booking, :id, :location, :dateOnly, :event
  json.ebae do
    json.name booking.service.user.name
    json.avatar booking.service.user.avatar
  end
end
