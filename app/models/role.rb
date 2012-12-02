class Role < ActiveRecord::Base

	#Attributes
	attr_accessible :name

	#Relationships
	has_and_belongs_to_many :users
	
end
