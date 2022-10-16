class Starship < ApplicationRecord

    validate :name, :model, :manufacturer, :length, :crew, :passengers, :starship_class
end
