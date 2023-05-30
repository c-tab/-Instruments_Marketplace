# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

puts "destroying all..."
Booking.destroy_all
Instrument.destroy_all
User.destroy_all

puts "creating users"
user1 = User.create!(email: "isalopez@gmail.com", password: "123456")
user2 = User.create!(email: "guggi.schneck@gmail.com", password: "123456")

file1 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685459847/71ZO_PpPn3L_w5empe.jpg')
file2 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685459847/71ZO_PpPn3L_w5empe.jpg')
file3 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685459847/71ZO_PpPn3L_w5empe.jpg')
file4 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685459847/71ZO_PpPn3L_w5empe.jpg')
file5 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685459847/71ZO_PpPn3L_w5empe.jpg')
file6 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685459847/71ZO_PpPn3L_w5empe.jpg')
file7 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685459847/71ZO_PpPn3L_w5empe.jpg')
file8 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685459847/71ZO_PpPn3L_w5empe.jpg')
file9 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685459847/71ZO_PpPn3L_w5empe.jpg')
file10 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685459847/71ZO_PpPn3L_w5empe.jpg')

puts "creating instruments"
instrument1 = Instrument.create!(category: "triangle", price: 8, serial: 762, user: user1)
instrument2 = Instrument.create!(category: "trombone", price: 18, serial: 202, user: user2)
instrument3 = Instrument.create!(category: "guitar", price: 22, serial: 403, user: user1)
instrument4 = Instrument.create!(category: "trombone", price: 18, serial: 201, user: user2)
instrument5 = Instrument.create!(category: "bass", price: 24, serial: 303, user: user1)
instrument6 = Instrument.create!(category: "piano", price: 38, serial: 232, user: user2)
instrument7 = Instrument.create!(category: "saxophone", price: 99, serial: 103, user: user1)
instrument8 = Instrument.create!(category: "trumpet", price: 38, serial: 200, user: user2)
instrument9 = Instrument.create!(category: "drums", price: 122, serial: 603, user: user1)
instrument10 = Instrument.create!(category: "french horn", price: 38, serial: 292, user: user2)

instrument1.photo.attach(io:file1, filename: "nes.png", content_type: "image/png")
instrument1.save!

instrument2.photo.attach(io:file2, filename: "nes.png", content_type: "image/png")
instrument2.save!

instrument3.photo.attach(io:file3, filename: "nes.png", content_type: "image/png")
instrument3.save!

instrument4.photo.attach(io:file4, filename: "nes.png", content_type: "image/png")
instrument4.save!

instrument5.photo.attach(io:file5, filename: "nes.png", content_type: "image/png")
instrument5.save!

instrument6.photo.attach(io:file6, filename: "nes.png", content_type: "image/png")
instrument6.save!

instrument7.photo.attach(io:file7, filename: "nes.png", content_type: "image/png")
instrument7.save!

instrument8.photo.attach(io:file8, filename: "nes.png", content_type: "image/png")
instrument8.save!

instrument9.photo.attach(io:file9, filename: "nes.png", content_type: "image/png")
instrument9.save!

instrument10.photo.attach(io:file10, filename: "nes.png", content_type: "image/png")
instrument10.save!
