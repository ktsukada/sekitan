class Company < ActiveRecord::Base
  attr_accessible :address1, :address2, :name, :tel_no

  has_many :stores
end
