class AddImage1ToCars < ActiveRecord::Migration
  def change
    add_column :cars, :image1, :string
    add_column :cars, :image2, :string
    add_column :cars, :image3, :string
  end
end
