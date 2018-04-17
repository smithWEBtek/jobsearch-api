class Api::JobsController < ApplicationController
	before_action :set_job, only: [:show, :update, :destroy]
	
	def index
		@jobs = Job.all.order(:id)
		render json: @jobs
	end

	def show
		render json: @job
	end
 
	def create
		@job = Job.new(job_params)
		if @job.save
			render json: @job
		else
			render json: { message: "Job NOT created."}
		end
	end

	def update
		@job.update(job_params)
		if @job.save
			render json: @job
		else
			render json: { message: 'Job NOT updated.'}
		end
	end

	def destroy
		@job.destroy
		render json: { message: 'Job deleted.'}
	end

	private
	def set_job
		@job = Job.find_by_id(params[:id])
	end

	def job_params
		params.require(:job).permit(:title, :url, :company_id, :description, :requirements, :instructions)
	end
end
