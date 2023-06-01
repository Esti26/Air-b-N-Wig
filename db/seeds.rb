# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

10.times do
  User.create!(email: Faker::Internet.email, password: "123456")
end

10.times do
  wig = Wig.new(title: Faker::Movies::HarryPotter.spell, color: Faker::Color.color_name, length: Faker::Measurement.length, description: Faker::GreekPhilosophers.quote)
  wig.owner = User.all.sample
  wig.save!
end
