class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :staff
      t.references :function

      t.timestamps
    end
  end
end
