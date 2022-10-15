class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :mass
      t.string :birth_year
      t.references :homeworld, null: false, foreign_key: true
      t.string :species

      t.timestamps
    end
  end
end
