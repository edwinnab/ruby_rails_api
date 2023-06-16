# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding games..."
20.times do
Product.create(name: Faker::Device.model_name, 
    platform:Faker::Device.platform, 
    serial: Faker::Device.serial, 
    manufacturer: Faker::Device.manufacturer, 
    version: Faker::Device.version)
end

puts "Done seeding!"