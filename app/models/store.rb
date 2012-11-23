class Store < ActiveRecord::Base
  attr_accessible :address, :company_id, :name, :store, :tel_no

  belongs_to :company

  has_many :staffs
end
