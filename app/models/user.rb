class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
  #:registerable,
         #:recoverable, 
         :rememberable, :trackable, :validatable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :account, :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :locked_at, :account
  # attr_accessible :title, :body

  has_one :staff

  def full_name
    name = last_name
    name << " " << first_name if first_name.present?
  end
end
