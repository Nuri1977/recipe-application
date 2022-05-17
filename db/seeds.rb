# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create!(name: 'Nuri Lacka', email: 'test1@email.com', password: 'password')
user2 = User.create!(name: 'Mugisa Samuel', email: 'test2@email.com', password: 'password')
recipe1 = Recipe.create!(name: 'First recipe', preparation_time: 15, cooking_time: 10, description: 'Best dish w
  ith old traditional secret', public: true, user: user1)
recipe2 = Recipe.create!(name: 'Second recipe', preparation_time: 5, cooking_time: 20, description: 'Best dish w
    ith modern look', public: true, user: user1)
recipe2 = Recipe.create!(name: 'Third recipe', preparation_time: 20, cooking_time: 5, description: 'Asian speciality', public: true, user: user2)

puts 'Seed files added successfully'


