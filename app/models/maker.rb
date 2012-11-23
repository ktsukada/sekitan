class Maker < ActiveRecord::Base
  attr_accessible :name

  has_many :car_names
  has_many :cars , :through => :car_names

end
