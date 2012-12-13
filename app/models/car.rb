class Car < ActiveRecord::Base
  attr_accessible :car_name_id, :grade, :maker_id, :image1, :image2, :image3

  belongs_to :car_name
  belongs_to :maker
  
end
