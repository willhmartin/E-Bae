# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Service.destroy_all
Review.destroy_all
Booking.destroy_all


user1 = User.create(role: "user", name: "Magoolio", gender: "female", age: 42)
user2 = User.create(role: "user", name: "Arana", gender: "female", age: 60)
user3 = User.create(role: "user", name: "Erica", gender: "female", age: 25)
# Baes
user4 = User.create(role: "user", name: "Ashkan", gender: "male", age: 25)
user5 = User.create(role: "user", name: "Kyle", gender: "male", age: 36)
user6 = User.create(role: "user", name: "Will", gender: "male", age: 27)

service1= Service.create!(area: "Shanghai", duration: 3, price: 400, content: "I'll cover up the cracks in your life", user: user4 )
service2 = Service.create!(area: "Chengdu", duration: 3, price: 275, content: "We met at the library", user: user5)
service3 = Service.create!(area: "Shanghai", duration: 3, price: 350, content: "Mothers love me", user: user6)
# 
# Service.create!(area: "Beijing", duration: 3, price: 400, content: "I'll cover up the cracks in your life", user: user4)
# Service.create!(area: "Xian", duration: 3, price: 400, content: "I'll cover up the cracks in your life", user: user5)

booking1 = Booking.create!(date: DateTime.new, location: "Shanghai", total: 130, user: user1, service: service1)
booking2 = Booking.create!(date: DateTime.new, location: "Chongqing", total: 75, user: user2, service: service2)

review1 = Review.create!(rating: 4, content: "Lovely service.", booking: booking1)
