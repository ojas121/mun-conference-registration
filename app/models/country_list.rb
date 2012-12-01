class CountryList < ActiveRecord::Base
	belongs_to :country
	belongs_to :list
	belongs_to :school

end
