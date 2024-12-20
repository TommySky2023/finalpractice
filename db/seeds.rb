# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mike = User.create!(email: 'mike@example.com', password: 'password')
cathy = User.create!(email: 'cathy@example.com', password: 'password')

5.times do
    mike.articles.create!(
      title: Faker::Lorem.sentence(word_count: 5),
      content: Faker::Lorem.sentence(word_count: 100)
    )
end

5.times do
  cathy.articles.create!(
    title: Faker::Lorem.sentence(word_count: 5),
    content: Faker::Lorem.sentence(word_count: 100)
  )
end