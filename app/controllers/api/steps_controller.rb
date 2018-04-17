class Api::StepsController < ApplicationController
  before_action :set_step, only: [:show, :update, :destroy]
  
  def index
    @steps = Step.all.order(:id)
    render json: @steps
  end

	def show
		render json: @step
  end
 
  def create
    @step = Step.new(step_params)
    if @step.save
      render json: @step
    else
      render json: { message: "Step NOT created."}
    end
  end

  def update
    @step.update(step_params)
    if @step.save
      render json: @step
    else
      render json: { message: 'Step NOT updated.'}
    end
  end

  def destroy
    @step.destroy
    render json: { message: 'Step deleted.'}
  end

  private
  def set_step
    @step = Step.find_by_id(params[:id])
  end

  def step_params
    params.require(:step).permit(:name, :category)
  end
end
