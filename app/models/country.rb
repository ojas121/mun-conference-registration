class Country < ActiveRecord::Base

	#has_and_belongs_to_many :schools
	has_many :country_lists
	has_many :lists, :through => :country_lists
	has_many :schools, :through => :country_lists

	has_many :committees

	scope :btalist, lambda{ |btalist| joins(:lists).where(:lists => {:list_name => btalist}) }
	scope :btaschool, lambda{ |btaschool| joins(:schools).where(:schools => {:id => btaschool}) }

	def self.committees
		@country.list.committees
	end

end
