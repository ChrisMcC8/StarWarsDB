class Starship < ApplicationRecord

    validate :name, :model, :manufacturer, :length, :crew, :passengers, :starship_class

    def self.search(search)
        if search
            starship_type = Starship.find_by(name: search)
            if starship_type
                self.where(starship_id: starship_type)
            else 
                @starships = Starship.all    
            end
        else 
            @startships = Starship.all
        end
    end
end
