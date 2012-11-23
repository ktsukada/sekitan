class Role < ActiveRecord::Base
  attr_accessible :function_id, :staff_id

  belongs_to :staff
  
end
