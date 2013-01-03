class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.references :store

      t.timestamps
    end
  end
end
