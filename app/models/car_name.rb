class CarName < ActiveRecord::Base
  attr_accessible :maker_id, :name

  validates :maker_id, :presence => true
  validates :name, :presence => true 

  belongs_to :maker
  has_many :cars

end
