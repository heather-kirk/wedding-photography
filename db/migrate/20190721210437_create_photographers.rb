class CreatePhotographers < ActiveRecord::Migration[5.2]
  def change
    create_table :photographers do |t|
      t.string :name
      t.string :style
      t.integer :price
      t.belongs_to :location, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
