class Committee < ActiveRecord::Base
	belongs_to :conference
	belongs_to :list


	validates :committee_name, :presence => true,
                      :length => { :minimum => 2 }

	validates :num_delegates, :presence => true

	has_many :committee_schools
	has_many :schools, :through => :committee_schools

	has_many :countries
end
