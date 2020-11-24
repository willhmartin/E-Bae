# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Service.destroy_all
Booking.destroy_all

user1 = User.create(role: "user", name: "Magoolio", gender: "male", age: 42)
user2 = User.create(role: "user", name: "Bob", gender: "male", age: 60)
user3 = User.create(role: "user", name: "Erica", gender: "female", age: 25)
user4 = User.create(role: "user", name: "Arana", gender: "female", age: 25)
user5 = User.create(role: "user", name: "Kyle", gender: "male", age: 36)
user6 = User.create(role: "user", name: "Will", gender: "male", age: 27)

service1= Service.create!(area: "Shanghai", duration: 3, price: 400, content: "I'll cover up the cracks in your life", user: user1 )
Service.create!(area: "Chengdu", duration: 3, price: 400, content: "I'll cover up the cracks in your life", user: user2)
Service.create!(area: "Shanghai", duration: 3, price: 400, content: "I'll cover up the cracks in your life", user: user3)
Service.create!(area: "Beijing", duration: 3, price: 400, content: "I'll cover up the cracks in your life", user: user4)
Service.create!(area: "Xian", duration: 3, price: 400, content: "I'll cover up the cracks in your life", user: user5)

booking1 = Booking.create!(date: DateTime.new, location: "Shanghai", total: 130, user: user1, service: service1)

