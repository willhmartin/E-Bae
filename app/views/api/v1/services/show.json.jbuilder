json.extract! @service, :id, :price, :duration, :content, :area
  json.ebae do
    json.name @service.user.name
    json.id @service.id
  end

