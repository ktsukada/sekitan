class CarName < ActiveRecord::Base
  attr_accessible :maker_id, :name

  belongs_to :maker
  has_many :cars
end
