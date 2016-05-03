class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  ROLES = %w[admin administracion atencion banned]

  
  audited
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable#, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:username, :role
  # attr_accessible :title, :body
  validates :username, :presence =>:true
end
