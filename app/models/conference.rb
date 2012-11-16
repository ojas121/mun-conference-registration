class Conference < ActiveRecord::Base
	has_many :committees

	def duration
      "#{start_date.strftime('%b %d, %Y')} - #{end_date.strftime('%b %d, %Y')}"
    end
end
