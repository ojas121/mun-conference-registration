class DelegationAssignment < ActiveRecord::Base

	#Relationships
	belongs_to :conference
	belongs_to :list
	belongs_to :country
	belongs_to :school

end
