class List < ActiveRecord::Base

	#Relationships
	belongs_to :conference

	has_many :committees
	
	has_many :delegation_assignments
	has_many :countries, :through => :delegation_assignments
	has_many :schools, :through => :delegation_assignments

	#Scopes
	scope :btaconference, lambda{ |btaconference| joins(:conference).where(:conferences => {:conference_title => btaconference}) }

end