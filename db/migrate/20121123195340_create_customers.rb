class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.references :staff
      t.date :first_year
      t.integer :run
      t.date :shaken

      t.timestamps
    end
  end
end
