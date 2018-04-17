class Api::TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  
	def index   
    @todos = Todo.all
    render json: @todos
  end
   
	def show
		render json: @todo
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = User.find_by_id(params[:id]).todos.build(todo_params)
    if @todo.save
      redirect_to :new
    else
      render json: @todo
    end
  end

  def edit
  end

  def update
    @todo.update(todo_params)
    if @todo.save
      flash[:notice] = 'Todo updated.'
      redirect_to user_todos_path(User.find_by_id(params[:id]))
    else
      render :edit
    end
  end

  def destroy
    if @todo.delete
      flash[:notice] = 'Todo deleted.'
      redirect_to user_todos_path(User.find_by_id(params[:id]))
    else
      render user_todos_path(User.find_by_id(params[:id]))
    end
  end

  private
  def set_todo
    @todo = Todo.find_by_id(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:user_id, :step_id, :job_id, :contact_id, :company_id, :due_date, :description, :priority)
  end
end
