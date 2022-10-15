class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :orbital_period
      t.string :diameter
      t.string :climate
      t.string :terrain
      t.string :population

      t.timestamps
    end
  end
end
