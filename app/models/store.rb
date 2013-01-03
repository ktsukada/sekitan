class Store < ActiveRecord::Base
  belongs_to :company
  has_many :staffs

  attr_accessible :address1, :address2, :name, :tel_no
end
