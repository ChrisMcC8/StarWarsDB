class Character < ApplicationRecord
    validate :name, :mass, :birth_year, :planet, :species
end
