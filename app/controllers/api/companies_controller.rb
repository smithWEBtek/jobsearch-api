class Api::CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :update, :destroy]
  
  def index
    @companies = Company.all.order(:name)
    render json: @companies
  end
	
  def show
		render json: @company
  end
	
	def create
    @company = Company.new(company_params)
    if @company.save
			render json: @company
    else
			render json: { errors: { message: 'Company NOT created' }}
    end
  end
	
  def update
    @company.update(company_params)
    if @company.save
			render json: @company
    else
			render json: { errors: { message: 'Company NOT updated' }}
    end
  end

  def destroy
    @company.destroy
		render json: { message: 'Company deleted.' }
  end

  private
  def set_company
    @company = Company.find_by_id(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :city, :state, :url, :about)
  end
end
