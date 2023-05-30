# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "destroying all..."
Booking.destroy_all
Instrument.destroy_all
User.destroy_all

puts "creating users"
user1 = User.create!(email: "isalopez@gmail.com", password: "123456")
user2 = User.create!(email: "guggi.schneck@gmail.com", password: "123456")

puts "creating instruments"
Instrument.create!(category: "triangle", price: 8, serial: 762, user: user1)
Instrument.create!(category: "trombone", price: 18, serial: 202, user: user2)
Instrument.create!(category: "guitar", price: 22, serial: 403, user: user1)
