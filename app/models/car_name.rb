class CarName < ActiveRecord::Base
  belongs_to :maker
  has_many :cars

  attr_accessible :maker_id, :name

  validates :maker_id, :presence => true
  validates :name, :presence => true 

end
