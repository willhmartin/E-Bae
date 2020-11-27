json.extract! @booking, :location, :date, :id
json.user do
  json.user_id @booking.user.id
  json.name @booking.user.name
end

json.ebae do
  json.ebae_id @booking.service.user.id
  json.name @booking.service.user.name
  json.price @booking.service.price
  json.duration @booking.service.duration
  json.area @booking.service.area
  json.name @booking.service.user.name
  json.gender @booking.service.user.gender
  json.avatar @booking.service.user.avatar
end
