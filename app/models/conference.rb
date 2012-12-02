class Conference < ActiveRecord::Base

  #Attributes
  attr_accessible :conference_title, :start_date, :end_date, :host, :venue, :conference_details, :latitude, :longitude, :user_id, :is_active
  geocoded_by :venue
  after_validation :geocode, :if => :venue_changed?

  #Relationships
  belongs_to :user

	has_many :committees, :dependent => :destroy
  accepts_nested_attributes_for :committees, :allow_destroy => :true
	
  has_many :lists, :dependent => :destroy
	accepts_nested_attributes_for :lists, :allow_destroy => :true

  has_many :schools, :dependent => :destroy
  accepts_nested_attributes_for :schools, :allow_destroy => :true

  has_many :delegation_assignments, :dependent => :destroy
  accepts_nested_attributes_for :delegation_assignments, :allow_destroy => :true
	
	#Validations
  validates :conference_title, :presence => true, :length => { :minimum => 3 }
  validates_presence_of :host
  validates_presence_of :venue
  validates_presence_of :conference_details
  validates_presence_of :start_date
  validates_presence_of :end_date
  validate :start_must_be_before_end_date
  validate :start_date_not_in_past

  #Methods
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
