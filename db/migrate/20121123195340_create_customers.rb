class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.references :staff
      t.string :tel_no
      t.string :address1
      t.string :address2
      t.date :birth_day

      t.timestamps
    end
  end
end
