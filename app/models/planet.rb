class Planet < ApplicationRecord

    validate :name, :orbital_period, :diameter, :climate, :terrain, :population

    paginates_per 10

    def self.search(search)
        if search
            planet_type = Planet.find_by(name: search)
            if planet_type
                self.where(planet_id: planet_type)
            else 
                @planets = Planet.all    
            end
        else 
            @planets = Planet.all
        end
    end
end
