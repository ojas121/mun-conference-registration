class School < ActiveRecord::Base
	has_many :delegates

	has_many :country_schools
	has_many :countries, :through => :country_schools

	has_many :committee_schools
	has_many :committees, :through => :committee_schools
end