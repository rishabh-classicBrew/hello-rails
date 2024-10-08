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
  { title: 'The Shawshank Redemption', rating: 'U', release_date: '1988-04-16 00:00:00 UTC' },
  { title: 'The Godfather', rating: 'A', release_date: '1988-04-16 00:00:00 UTC' },
  { title: 'The Dark Knight', rating: 'U', release_date: '1988-04-16 00:00:00 UTC' },
  { title: 'Pulp Fiction', rating: 'PG-13', release_date: '1988-04-16 00:00:00 UTC' },
  { title: 'The Lord of the Rings: The Return of the King', rating: 'U', release_date: '1988-04-16 00:00:00 UTC' }
]

movies.each do |movie|
  Movie.find_or_create_by!(title: movie[:title]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
  end
end