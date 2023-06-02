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
user4 = User.create!(email: "guest@gmail.com", password: "123456")

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
file11 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685694647/e5a56fc890bcd00082de183d4ce375e9_zs8ael.jpg')
file12 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685694746/B0636_z0yzje.jpg')
file13 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685694992/BBM_20Betsy_20-_20Burgundy_20Mist_gdlljo.jpg')
file14 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685695051/solist-fl1s-flute2_myw7ry.jpg')
file15 = URI.open('https://res.cloudinary.com/divn1ky6d/image/upload/v1685695234/FH601_0251_1946x_rcwhby.jpg')

puts "creating instruments"


instrument1 = Instrument.create!(category: 'Triangle', price: 8, serial: 762, user: user1, address: '123 Oak Street, London, WC1X 0AA, United Kingdom')
instrument2 = Instrument.create!(category: 'Trombone', price: 18, serial: 202, user: user3, address: '456 Elm Avenue, Toronto, ON M5H 2N2, Canada')
instrument3 = Instrument.create!(category: 'Guitar', price: 22, serial: 403, user: user1, address: '789 Maple Lane, Sydney, NSW 2000, Australia')
instrument4 = Instrument.create!(category: 'Flute', price: 18, serial: 201, user: user2, address: 'Heilwigstraße 21, Hamburg, 20249, Germany')
instrument5 = Instrument.create!(category: 'Bass', price: 24, serial: 303, user: user1, address: 'Calle Serrano 25, 28001, Madrid, Spain')
instrument6 = Instrument.create!(category: 'Piano', price: 38, serial: 232, user: user2, address: 'Praca Dom Luis I, 1200-109 Lisbon, Portugal')
instrument7 = Instrument.create!(category: 'Saxophone', price: 99, serial: 103, user: user3, address: '234 Willow Lane, Cape Town, 8001, South Africa')
instrument8 = Instrument.create!(category: 'Trumpet', price: 38, serial: 200, user: user2, address: 'Piazza di Trevi, 00187 Rome, Italy')
instrument9 = Instrument.create!(category: 'Drums', price: 122, serial: 603, user: user1, address: 'Simmernstraße 6, 80804 München, Deutschland')
instrument10 = Instrument.create!(category: 'French horn', price: 38, serial: 292, user: user2, address: '345 Cherry Lane, Delhi, 110001, India')
instrument11 = Instrument.create!(category: 'Triangle', price: 30, serial: 222, user: user4, address: 'Calle de Lagasca 22, 28001, Madrid, Spain')
instrument12 = Instrument.create!(category: 'Guitar', price: 48, serial: 322, user: user4, address: 'Calle del Dr. Esquerdo, 70, 28007 Madrid, Spain')
instrument13 = Instrument.create!(category: 'Bass', price: 28, serial: 492, user: user4, address: 'Sylvesterallee 7, 22525 Hamburg, Germany')
instrument14 = Instrument.create!(category: 'Flute', price: 30, serial: 102, user: user4, address: ' Plaza Mayor, 28012 Madrid, Spain')
instrument15 = Instrument.create!(category: 'French horn', price: 38, serial: 299, user: user4, address: 'Mittelweg 122, 20148 Hamburg, Deutschland')

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

instrument11.photo.attach(io: file11, filename: "nes.png", content_type: "image/png")
instrument11.save!

instrument12.photo.attach(io: file12, filename: "nes.png", content_type: "image/png")
instrument12.save!

instrument13.photo.attach(io: file13, filename: "nes.png", content_type: "image/png")
instrument13.save!

instrument14.photo.attach(io: file14, filename: "nes.png", content_type: "image/png")
instrument14.save!

instrument15.photo.attach(io: file15, filename: "nes.png", content_type: "image/png")
instrument15.save!
