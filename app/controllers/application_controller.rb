class ApplicationController < ActionController::Base
	protect_from_forgery
	before_filter :authenticate_user!
	before_filter { |c| Authorization.current_user = c.current_user }
end
