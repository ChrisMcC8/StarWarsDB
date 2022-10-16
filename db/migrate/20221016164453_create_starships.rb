class CreateStarships < ActiveRecord::Migration[7.0]
  def change
    create_table :starships do |t|
      t.string :name
      t.string :model
      t.string :manufacturer
      t.string :length
      t.string :crew
      t.string :passengers
      t.string :starship_class

      t.timestamps
    end
  end
end
