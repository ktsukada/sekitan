class Function < ActiveRecord::Base
  attr_accessible :name

  has_many :roles
end
