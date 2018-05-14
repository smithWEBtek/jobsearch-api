class ApplicationController < ActionController::API

	def backup
		exec 'rake db:data:dump && rails s -p 3001'
	end
end
