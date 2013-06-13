class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable

  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :cakes
end
