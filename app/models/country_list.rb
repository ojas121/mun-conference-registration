class CountryList < ActiveRecord::Base
	belongs_to :country
	belongs_to :list
end
