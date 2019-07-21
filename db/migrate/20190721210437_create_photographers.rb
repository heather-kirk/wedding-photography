class CreatePhotographers < ActiveRecord::Migration[5.2]
  def change
    create_table :photographers do |t|
      t.belongs_to :location, foreign_key: true
      t.string :name
      t.string :style
      t.integer :price

      t.timestamps
    end
  end
end
