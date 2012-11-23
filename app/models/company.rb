class Company < ActiveRecord::Base
  attr_accessible :address, :end_at, :name, :start_at, :tel_no

  has_many :stores
end
