class Car < ActiveRecord::Base
  belongs_to :maker
  belongs_to :car_name
  attr_accessible :grade1, :grade2, :image1, :image2, :image3, :notes, :price, :sale_end_at, :sale_start_at
end
