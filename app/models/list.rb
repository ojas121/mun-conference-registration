class List < ActiveRecord::Base
	has_many :committees
	has_many :country_lists
	has_many :countries, :through => :country_lists
end
