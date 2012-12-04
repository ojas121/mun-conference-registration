class Delegate < ActiveRecord::Base

	#Relationships
	belongs_to :school

	#Methods
	def fullname
      "#{first_name} #{last_name}"
    end
    
    
    #Validations
    validates_presence_of :first_name
    validates_presence_of :last_name
  	validates_presence_of :gender
  	validates_presence_of :nationality
  	validates_presence_of :country_id
  	validates_presence_of :committee_id
end
