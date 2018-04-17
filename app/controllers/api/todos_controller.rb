class Api::TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]
  
	def index   
    @todos = Todo.all
    render json: @todos
  end
   
	def show
		render json: @todo
  end
 
  def create
    @todo = User.find_by_id(params[:id]).todos.build(todo_params)
    if @todo.save
      render json: @todo
    else
      render json: { message: 'Todo NOT created.'}
    end
  end

  def edit
  end

  def update
    @todo.update(todo_params)
    if @todo.save
      render json: @todo
    else
      render json: { message: 'Todo NOT updated.'}
    end
  end

  def destroy
  	@todo.delete
    render json: { message: 'Todo deleted.'}
  end

  private
  def set_todo
    @todo = Todo.find_by_id(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:user_id, :step_id, :job_id, :contact_id, :company_id, :due_date, :description, :priority)
  end
end
