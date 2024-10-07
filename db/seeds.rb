# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

movies = [
  { title: 'The Shawshank Redemption', genre: 'Drama', release_year: 1994 },
  { title: 'The Godfather', genre: 'Crime', release_year: 1972 },
  { title: 'The Dark Knight', genre: 'Action', release_year: 2008 },
  { title: 'Pulp Fiction', genre: 'Crime', release_year: 1994 },
  { title: 'The Lord of the Rings: The Return of the King', genre: 'Fantasy', release_year: 2003 }
]

movies.each do |movie|
  Movie.find_or_create_by!(title: movie[:title]) do |m|
    m.genre = movie[:genre]
    m.release_year = movie[:release_year]
  end
end