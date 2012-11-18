class Conference < ActiveRecord::Base
	has_many :committees, :dependent => :destroy
	attr_accessible :conference_title, :start_date, :end_date, :host, :venue, :conference_details, :latitude, :longitude
	geocoded_by :venue
	after_validation :geocode, :if => :venue_changed?

	def duration
      "#{start_date.strftime('%b %d, %Y')} - #{end_date.strftime('%b %d, %Y')}"
    end
end
