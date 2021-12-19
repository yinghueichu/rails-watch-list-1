# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'
require 'json'

25.times do
  movie = Movie.create(title: Faker::Movie.title, overview: Faker::Movie.quote, poster_url: Faker::LoremFlickr.image(size: "286x180", search_terms: ['movie']), rating: Faker::Number.decimal(l_digits: 1, r_digits: 1))
  puts movie.title
end

# url = 'http://tmdb.lewagon.com/movie/top_rated'
# movies_serialized = URI.open(url).read
# movies = JSON.parse(movies_serialized)
