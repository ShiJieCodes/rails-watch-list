require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

20.times do
  Movie.create(title: Faker::Movie.title, overview: Faker::Quote.famous_last_words, poster_url: Faker::Internet.domain_name, rating: (rand(10)) )
end

List.create(name: "Horror Movies")
List.create(name: "Funny Movies")
List.create(name: "Lame Movies")
List.create(name: "Action Movies")

Bookmark.create(comment: "Very Good", movie: Movie.first, list: List.first)
Bookmark.create(comment: "Very Good", movie: Movie.all[1], list: List.first)
Bookmark.create(comment: "Very Good", movie: Movie.all[2], list: List.first)
