# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
1000.times do
    Product.create(

      title: Faker::Game.title,
      description: Faker::Game.genre,
      price: Faker::Number.number(digits:2)
    )
  end