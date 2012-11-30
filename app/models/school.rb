class School < ActiveRecord::Base

	belongs_to :conference
	has_many :delegates, :dependent => :destroy
	accepts_nested_attributes_for :delegates, :allow_destroy => :true
	has_and_belongs_to_many :countries

	has_many :committee_schools
	has_many :committees, :through => :committee_schools

	belongs_to :user

	attr_accessible :user_id, :school_name, :school_address, :email, :max_students, :conference_id, :country_ids
end