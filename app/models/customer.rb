class Customer < ActiveRecord::Base
  attr_accessible :first_year, :name, :run, :shaken, :staff_id

  belongs_to :staff
end
