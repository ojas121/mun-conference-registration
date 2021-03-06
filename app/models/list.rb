class List < ActiveRecord::Base

	#Relationships
	belongs_to :conference

	has_many :committees
	
	has_many :delegation_assignments, :dependent => :destroy
	has_many :countries, :through => :delegation_assignments
	has_many :schools, :through => :delegation_assignments

	#Scopes
	scope :btaconference, lambda{ |btaconference| joins(:conference).where(:conferences => {:conference_title => btaconference}) }
	scope :btacountry, lambda{ |btacountry| joins(:countries).where(:countries => {:id => btacountry}) }

end