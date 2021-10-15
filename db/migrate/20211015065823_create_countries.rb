class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string  :code, null: false
      t.string  :name, null: false
      t.string  :continent, null: false
      t.string  :region, null: false
      t.decimal :surface_area, precision: 10, scale: 2, null:false
      t.integer :indep_year
      t.integer :population, null: false
      t.decimal :life_expectancy, precision: 3, scale: 1
      t.decimal :gnp, precision: 10, scale: 2
      t.string  :local_name, null: false
      t.string  :government_form, null: false
      t.string  :head_of_state
      t.integer :capital
      t.string  :code2, null: false
      t.timestamps
    end
    add_index :countries, :code, unique: true
  end
end
