class Character < ApplicationRecord
    validate :name, :mass, :birth_year, :planet, :species

    belongs_to :planets

    def self.search(search)
        if search
            character_type = Character.find_by(name: search)
            if character_type
                self.where(character_id: character_type)
            else 
                @characters = Character.all    
            end
        else 
            @characters = Character.all
        end
    end
end
