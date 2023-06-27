# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10_000.times do |i|
  Employee.create(
    name: Faker::Name.name,
    position: Faker::Job.position,
    age: Faker::Number.between(from: 18, to: 65),
    start_date: Faker::Date.between(from: 10.years.ago, to: Date.today),
    office: Faker::Company.name,
  ) if Employee.count < 10_000
end
