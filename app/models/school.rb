class School < ActiveRecord::Base

	belongs_to :conference

	has_many :delegates, :dependent => :destroy
	accepts_nested_attributes_for :delegates, :allow_destroy => :true
	#has_and_belongs_to_many :countries

	has_many :country_lists
	has_many :countries, :through => :country_lists
	has_many :lists, :through => :country_lists

	belongs_to :user

	attr_accessible :user_id, :school_name, :school_address, :email, :max_students, :conference_id, :country_ids
end