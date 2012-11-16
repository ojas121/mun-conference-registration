class Country < ActiveRecord::Base
	has_many :country_lists
	has_many :lists, :through => :country_lists

	has_many :country_schools
	has_many :schools, :through => :country_schools
end
