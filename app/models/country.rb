class Country < ActiveRecord::Base

	#Relationships
	has_many :delegation_assignments
	has_many :lists, :through => :delegation_assignments
	has_many :schools, :through => :delegation_assignments

	#Scopes
	scope :btalist, lambda{ |btalist| joins(:lists).where(:lists => {:list_name => btalist}) }
	scope :btaschool, lambda{ |btaschool| joins(:schools).where(:schools => {:id => btaschool}) }
	
end
