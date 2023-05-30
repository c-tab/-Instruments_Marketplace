# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Instrument.destroy_all

User.create!(email: "isalopez@gmail.com", encrypted_password: "123456")
User.create!(email: "guggi.schneck@gmail.com", encrypted_password: "123456")

Instrument.create!(category: "triangle", price: 8, serial: 00762)
Instrument.create!(category: "trombone", price: 18, serial: 00882)
Instrument.create!(category: "guitar", price: 22, serial: 00793)
