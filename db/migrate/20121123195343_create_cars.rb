class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.references :maker
      t.references :car_name
      t.string :grade
      t.integer :price
      t.date :saled_at
      t.string :notes

      t.timestamps
    end
  end
end
