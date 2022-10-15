class Planet < ApplicationRecord

    validate :name, :orbital_period, :diameter, :climate, :terrain, :population
end
