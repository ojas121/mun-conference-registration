class Committee < ActiveRecord::Base
	belongs_to :conference
	belongs_to :list
end
