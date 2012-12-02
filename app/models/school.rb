class School < ActiveRecord::Base

	#Attributes
	attr_accessible :user_id, :school_name, :school_address, :email, :max_students, :conference_id, :country_ids

	#Relationships
	belongs_to :conference
	belongs_to :user

	has_many :delegates, :dependent => :destroy
	accepts_nested_attributes_for :delegates, :allow_destroy => :true

	has_many :delegation_assignments
	has_many :countries, :through => :delegation_assignments
	has_many :lists, :through => :delegation_assignments

end