class Message 
	include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  #Attributes
  attr_accessor :school_name, :first_name, :last_name, :email, :nationality, :gender, :details

  #Validations
  validates :school_name, :first_name, :last_name, :email, :nationality, :gender, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => false
  
  #Methods
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
  
end
