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
user1 = User.create!(email: "carlos.aguirre@gmail.com", password: "123456")
user2 = User.create!(email: "guggi.schneck@gmail.com", password: "123456")
user3 = User.create!(email: "clemens.schoenberger@gmail.com", password: "123456")

file1 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685459847/71ZO_PpPn3L_w5empe.jpg')
file2 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685522680/616AqXnjCML._AC_UF894_1000_QL80__rck8af.jpg')
file3 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685527130/6103057944291_gzah8d.jpg')
file4 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685522838/31P2TjeREkL_aljiga.jpg')
file5 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685527675/41gYm--LalL_krhfnp.jpg')
file6 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685522970/schimmel-wilhelm-w180-tradition-grand-piano_uy6fsp.jpg')
file7 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685527743/33_saxophone_fcxq2l.jpg')
file8 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685527577/brass-trumpet-on-white-background_er0vi8.jpg')
file9 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685523210/12075071_800_psiamh.jpg')
file10 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685523247/H378_Original_677__46112.1604965822_xjmzhr.jpg')

puts "creating instruments"
#instrument1 = Instrument.create!(category: "triangle", price: 8, serial: 762, user: user1,)
#instrument2 = Instrument.create!(category: "trombone", price: 18, serial: 202, user: user3)
#instrument3 = Instrument.create!(category: "guitar", price: 22, serial: 403, user: user1)
#instrument4 = Instrument.create!(category: "flute", price: 18, serial: 201, user: user2)
#instrument5 = Instrument.create!(category: "bass", price: 24, serial: 303, user: user1)
#instrument6 = Instrument.create!(category: "piano", price: 38, serial: 232, user: user2)
#instrument7 = Instrument.create!(category: "saxophone", price: 99, serial: 103, user: user3)
#instrument8 = Instrument.create!(category: "trumpet", price: 38, serial: 200, user: user2)
#instrument9 = Instrument.create!(category: "drums", price: 122, serial: 603, user: user1)
#instrument10 = Instrument.create!(category: "french horn", price: 38, serial: 292, user: user2)


instrument1 = Instrument.create!(category: "triangle", price: 8, serial: 762, user: user1, address: "123 Oak Street, London, WC1X 0AA, United Kingdom")
instrument2 = Instrument.create!(category: "trombone", price: 18, serial: 202, user: user3, address: "456 Elm Avenue, Toronto, ON M5H 2N2, Canada")
instrument3 = Instrument.create!(category: "guitar", price: 22, serial: 403, user: user1, address: "789 Maple Lane, Sydney, NSW 2000, Australia")
instrument4 = Instrument.create!(category: "flute", price: 18, serial: 201, user: user2, address: "Heilwigstraße 21, Hamburg, 20249, Germany")
instrument5 = Instrument.create!(category: "bass", price: 24, serial: 303, user: user1, address: "Calle Serrano 25, 28001, Madrid, Spain")
instrument6 = Instrument.create!(category: "piano", price: 38, serial: 232, user: user2, address: "Daniel Carrion 261, Miraflores, Lima, Peru")
instrument7 = Instrument.create!(category: "saxophone", price: 99, serial: 103, user: user3, address: "234 Willow Lane, Cape Town, 8001, South Africa")
instrument8 = Instrument.create!(category: "trumpet", price: 38, serial: 200, user: user2, address: "110 W 111th St, New York, NY 10026, USA")
instrument9 = Instrument.create!(category: "drums", price: 122, serial: 603, user: user1, address: "Simmernstraße 6, 80804 München, Deutschland")
instrument10 = Instrument.create!(category: "french horn", price: 38, serial: 292, user: user2, address: "345 Cherry Lane, Delhi, 110001, India")

instrument1.photo.attach(io: file1, filename: "nes.png", content_type: "image/jpg")
instrument1.save!

instrument2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
instrument2.save!

instrument3.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
instrument3.save!

instrument4.photo.attach(io: file4, filename: "nes.png", content_type: "image/png")
instrument4.save!

instrument5.photo.attach(io: file5, filename: "nes.png", content_type: "image/png")
instrument5.save!

instrument6.photo.attach(io: file6, filename: "nes.png", content_type: "image/png")
instrument6.save!

instrument7.photo.attach(io: file7, filename: "nes.png", content_type: "image/png")
instrument7.save!

instrument8.photo.attach(io: file8, filename: "nes.png", content_type: "image/png")
instrument8.save!

instrument9.photo.attach(io: file9, filename: "nes.png", content_type: "image/png")
instrument9.save!

instrument10.photo.attach(io: file10, filename: "nes.png", content_type: "image/png")
instrument10.save!
