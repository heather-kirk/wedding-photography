class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :state
      t.string :city
      t.integer :zipcode
      t.boolean :relocate

      t.timestamps
    end
  end
end
