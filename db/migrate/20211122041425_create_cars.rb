class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :seats
      t.integer :price
      t.string :make
      t.string :model
      t.string :transmission
      t.string :car_type
      t.string :suburb

      t.timestamps
    end
  end
end
