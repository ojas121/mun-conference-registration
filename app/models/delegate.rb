class Delegate < ActiveRecord::Base
	belongs_to :school

	def fullname
      "#{first_name} #{last_name}"
    end
end
