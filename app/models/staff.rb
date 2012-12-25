class Staff < ActiveRecord::Base
  attr_accessible :birthday, :name, :password, :store_id, :tel_no, :login_id

	belongs_to :store
	belongs_to :user
	has_many :user_functions , :through => :user
	has_many :customers

	validates_presence_of :name, :password, :login_id
	validates_confirmation_of :passwords

end
