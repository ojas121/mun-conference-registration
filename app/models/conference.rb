class Conference < ActiveRecord::Base
	has_many :schools
	belongs_to :user
	has_many :committees, :dependent => :destroy
	has_many :lists, :dependent => :destroy
	accepts_nested_attributes_for :lists, :allow_destroy => :true
	attr_accessible :conference_title, :start_date, :end_date, :host, :venue, :conference_details, :latitude, :longitude, :user_id, :is_active
	geocoded_by :venue
	after_validation :geocode, :if => :venue_changed?


  	validates :conference_title, :presence => true,
                      :length => { :minimum => 3 }
    validates_presence_of :host
    validates_presence_of :venue
    validates_presence_of :conference_details
    validates_presence_of :start_date
    validates_presence_of :end_date
    validate :start_must_be_before_end_date
    validate :start_date_not_in_past


def start_must_be_before_end_date
  errors.add(:start_date, "Must be before end time") unless 
  self.start_date < self.end_date
end


def start_date_not_in_past
  errors.add(:start_date, "must not be in past") unless 
  self.start_date > Date.current
end 


	def duration
      "#{start_date.strftime('%b %d, %Y')} - #{end_date.strftime('%b %d, %Y')}"
    end
end
