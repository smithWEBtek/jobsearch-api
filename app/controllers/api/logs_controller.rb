class Api::LogsController < ApplicationController
		before_action :set_log, only: [:show, :update, :destroy]
		
		def index
			@logs = Log.all.order(:id)
			render json: @logs
		end
	
		def show
			render json: @log
		end
	 
		def create
			@log = Log.new(log_params)
			if @log.save
				render json: @log
			else
				render json: { message: "Log NOT created."}
			end
		end
	
		def update
			@log.update(log_params)
			if @log.save
				render json: @log
			else
				render json: { message: 'Log NOT updated.'}
			end
		end
	
		def destroy
			@log.destroy
			render json: { message: 'Log deleted.'}
		end
	
		private
		def set_log
			@log = log.find_by_id(params[:id])
		end
	
		def log_params
			params.require(:log).permit(:todo_id, :note)
		end
	end
	