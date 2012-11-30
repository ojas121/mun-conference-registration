class Conference < ActiveRecord::Base
	has_many :schools
	belongs_to :user
	has_many :committees, :dependent => :destroy
	has_many :lists, :dependent => :destroy
	accepts_nested_attributes_for :lists, :allow_destroy => :true
	attr_accessible :conference_title, :start_date, :end_date, :host, :venue, :conference_details, :latitude, :longitude, :user_id, :is_active
	geocoded_by :venue
	after_validation :geocode, :if => :venue_changed?

	def duration
      "#{start_date.strftime('%b %d, %Y')} - #{end_date.strftime('%b %d, %Y')}"
    end
end
