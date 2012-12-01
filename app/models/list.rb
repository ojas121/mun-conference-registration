class List < ActiveRecord::Base
	has_many :committees
	belongs_to :conference

	has_many :country_lists
	has_many :countries, :through => :country_lists
	has_many :schools, :through => :country_lists

	scope :btaconference, lambda{ |btaconference| joins(:conference).where(:conferences => {:conference_title => btaconference}) }
end
