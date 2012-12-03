class Committee < ActiveRecord::Base
	
	#Relationships
	belongs_to :conference
	belongs_to :list

	#Validations
	validates :committee_name, :presence => true, :length => { :minimum => 2 }
	validates :num_delegates, :presence => true
	
	scope :btalist, lambda{ |btalist| joins(:list).where(:lists => {:id => btalist}) }
end
