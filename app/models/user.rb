class User < ActiveRecord::Base

	has_and_belongs_to_many :roles

  has_many :conferences
  has_many :schools
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :gender, :nationality, :email, :password, :password_confirmation, :remember_me, :role_ids

  scope :with_role, lambda{ |role| joins(:roles).where(:roles => {:name => role}) }

  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end

  def user_name
      "#{first_name} #{last_name}"
  end

  def password_required?
    super if confirmed?
  end

  def password_match?
    self.errors[:password] << "can't be blank" if password.blank?
    self.errors[:password_confirmation] << "can't be blank" if password_confirmation.blank?
    self.errors[:password_confirmation] << "does not match password" if password != password_confirmation
    password == password_confirmation && !password.blank?
  end


end
