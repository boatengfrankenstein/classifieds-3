class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :image
      t.string :make
      t.string :car_model
      t.integer :year
      t.integer :price
      t.timestamps null: false
    end
  end
end
