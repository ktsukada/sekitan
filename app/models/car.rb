class Car < ActiveRecord::Base
  attr_accessible :car_name_id, :grade, :price, :maker_id, :image1, :image2, :image3, :notes, :saled_at

  belongs_to :car_name
  belongs_to :maker
end
