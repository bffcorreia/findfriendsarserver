class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :facebook_id
  # attr_accessible :title, :body
  
  before_save :ensure_authentication_token
  
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :point_of_interests
  
end
