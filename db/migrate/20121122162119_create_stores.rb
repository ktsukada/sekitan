class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.references :company
      t.string :name
      t.string :address
      t.string :tel_no

      t.timestamps
    end
  end
end
