class Character < ApplicationRecord

    validate :name, :mass, :birth_year, :homeworld, :species
end
