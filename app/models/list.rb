class List < ActiveRecord::Base
	has_many :committees
	has_many :country_lists
	has_many :countries, :through => :country_lists
	belongs_to :conference

	scope :btaconference, lambda{ |btaconference| joins(:conference).where(:conferences => {:conference_title => btaconference}) }
end
