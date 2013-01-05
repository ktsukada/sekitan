class Staff < ActiveRecord::Base
  belongs_to :company
  belongs_to :store
  belongs_to :user
  has_many :customers

  attr_accessible :store_id, :user_id, :staff_no

  def full_name
  	user.full_name
  end

end
