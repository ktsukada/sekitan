class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.references :company
      t.string :name
      t.string :address1
      t.string :address2
      t.string :tel_no

      t.timestamps
    end
  end
end
