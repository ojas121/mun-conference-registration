class Committee < ActiveRecord::Base
	belongs_to :conference
	belongs_to :list

	has_many :committee_schools
	has_many :schools, :through => :committee_schools
end
