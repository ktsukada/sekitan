class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.references :user
      t.references :store
      t.string :staff_no

      t.timestamps
    end
  end
end
