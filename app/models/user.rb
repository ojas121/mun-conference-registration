class User < ActiveRecord::Base

	has_many :user_roles
	has_many :roles, :through => :user_roles
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :gender, :nationality, :email, :password, :password_confirmation, :remember_me, :role_ids

  scope :with_role, lambda{ |role| joins(:roles).where(:roles => {:name => role}) }

  def role_symbols
  	roles.map do |role|
  		role.name.underscore.to_sym
  	end
  end


end
