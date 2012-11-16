class CommitteeSchool < ActiveRecord::Base
	belongs_to :committee
	belongs_to :school
end
