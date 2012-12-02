class Delegate < ActiveRecord::Base

	#Relationships
	belongs_to :school

	#Methods
	def fullname
      "#{first_name} #{last_name}"
    end
    
end
