class Customer < ActiveRecord::Base
  belongs_to :staff
  attr_accessible :staff_id, :address1, :address2, :birth_day, :name, :tel_no
end
