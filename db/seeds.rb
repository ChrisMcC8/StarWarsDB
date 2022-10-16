# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "csv"

# Character.delete_all
# Planet.delete_all
# Species.delete_all
Starship.delete_all

# char_filename = Rails.root.join("db/characters.csv")
# plan_filename = Rails.root.join("db/planets.csv")
# spec_filename = Rails.root.join("db/species.csv")
ship_filename = Rails.root.join("db/starships.csv")


# char_csv_data = File.read(char_filename)
# plan_csv_data = File.read(plan_filename)
# spec_csv_data = File.read(spec_filename)
ship_csv_data = File.read(ship_filename)


# characters = CSV.parse(char_csv_data, headers:true)
# planets = CSV.parse(plan_csv_data, headers:true)
# species = CSV.parse(spec_csv_data, headers:true)
starships = CSV.parse(ship_csv_data, headers:true)


# characters.each do |character|
#     character = Character.create(
#         name: character["name"],
#         mass: character["mass"],
#         birth_year: character["birth_year"],
#         planet: character["homeworld"],
#         species: character["species"]
#     )
# end

# planets.each do |planet|
#     planet = Planet.create(
#         name: planet["name"],
#         orbital_period: planet["orbital_period"],
#         diameter: planet["diameter"],
#         climate: planet["climate"],
#         terrain: planet["terrain"],
#         population: planet["population"]
#     )
# end

# species.each do |spec|
#     spec = Species.create(
#         name: spec["name"]
#     )
# end

starships.each do |starship|
    starship = Starship.create(
        name: starship["name"],
        model: starship["model"],
        manufacturer: starship["manufacturer"],
        length: starship["length"],
        crew: starship["crew"],
        passengers: starship["passengers"],
        starship_class: starship["starship_class"]
    )
end