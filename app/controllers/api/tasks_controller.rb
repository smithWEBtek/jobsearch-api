class Api::TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]
  
	def index
    @tasks = Task.all
    render json: @tasks
  end
   
	def show
		render json: @task
  end
 
	def create
		@task = Task.new(task_params)
    if @task.save
      render json: @task
    else
      render json: { message: 'Task NOT created.'}
    end
  end
	
  def edit
  end
	
  def update
    @task.update(task_params)
    if @task.save
      render json: @task
    else
      render json: { message: 'Task NOT updated.'}
    end
  end
	
  def destroy
  	@task.delete
    render json: { message: 'Task deleted.'}
  end
	
  private
  def set_task
    @task = Task.find_by_id(params[:id])
  end
	
	def task_params
		params.require(:task).permit(:user_id, :step_id, :job_id, :contact_id, :company_id, :due_date, :title, :priority, :notes)
   end
end
