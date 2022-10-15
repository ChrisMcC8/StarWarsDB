class Character < ApplicationRecord
  belongs_to :homeworld

  validates :name, :mass, :birth_year, :homeworld, :species, presence: true
  
end
