# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'csv'

# puts 'Importing typeservice...'
# CSV.foreach(Rails.root.join('db/seeds/csv/typeservice.csv'), headers: true) do |row|
#   Typeservice.create! do |type_service|
#     type_service.id = row[0]
#     type_service.name = row[1]
#   end
# end

# puts 'Importing typestate...'
# CSV.foreach(Rails.root.join('db/seeds/csv/typestate.csv'), headers: true) do |row|
#   Typestate.create! do |type_state|
#     type_state.id = row[0]
#     type_state.name = row[1]
#   end
# end

# puts 'Importing replacement...'
# CSV.foreach(Rails.root.join('db/seeds/csv/replacement.csv'), headers: true) do |row|
#   Replacement.create! do |replacement|
#     replacement.id = row[0]
#     replacement.name = row[1]
#   end
# end