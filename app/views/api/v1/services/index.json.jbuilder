json.array! @services do |service|

json.extract! service, :id, :price, :duration, :content, :area
  json.ebae do
    json.name service.user.name
    json.id service.id
    json.avatar service.user.avatar
  end
end
