class Delegate < ActiveRecord::Base
	belongs_to :school

	def delegate_name
      "#{first_name} #{last_name}"
    end
end
