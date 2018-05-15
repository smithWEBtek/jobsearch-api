class ApplicationController < ActionController::API

	def backup
		exec 'rake db:data:dump && rake restart'
	end
end
