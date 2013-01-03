class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.references :maker
      t.references :car_name
      t.string :grade1
      t.string :grade2
      t.integer :price
      t.date :sale_start_at
      t.date :sale_end_at
      t.string :notes
      t.string :image1
      t.string :image2
      t.string :image3

      t.timestamps
    end
  end
end
