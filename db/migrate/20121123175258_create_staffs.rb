class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.references :store
      t.string :login_id
      t.string :password
      t.string :name
      t.date :birthday
      t.string :tel_no

      t.timestamps
    end
  end
end
