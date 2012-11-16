class CountrySchool < ActiveRecord::Base
	belongs_to :country
	belongs_to :school
end
