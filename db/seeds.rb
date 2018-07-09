# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


UserClient.delete_all
Client.delete_all
Institution.delete_all

10.times do
 Institution.create!(rut: Faker::Number.number(8), dv: Faker::Number.digit, business_name: Faker::Name.first_name)
end

10.times do
  a = Client.create!(rut: Faker::Number.number(8), dv: Faker::Number.digit, name: Faker::Name.first_name, last_name: Faker::Name.last_name, institution: Institution.first)
  UserClient.create!(client: a, user: User.order("RANDOM()").first)
end

10.times do
  a = Client.create!(rut: Faker::Number.number(8), dv: Faker::Number.digit, name: Faker::Name.first_name, last_name: Faker::Name.last_name, institution: Institution.last)
  UserClient.create!(client: a, user: User.order("RANDOM()").first)
end

