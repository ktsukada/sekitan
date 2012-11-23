class CreateCarNames < ActiveRecord::Migration
  def change
    create_table :car_names do |t|
      t.references :maker
      t.string :name

      t.timestamps
    end
  end
end
