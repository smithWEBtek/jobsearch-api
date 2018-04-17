class Api::UsersController < ApplicationController
	before_action :set_user, only: [:show, :update, :destroy]
 
  def index
		@users = User.all
		render json: @users
  end

  def show
    @user = User.find_by_id(params[:id])
    @todo = @user.todos.build
		render json: @user
  end

  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user
    else
      render json: {message: 'User NOT created.'}
    end
  end

  def update
    @user.update_without_password(user_params)
    if @user.save
      render json: @user
    else
      render Json: { message: "User NOT updated"}
    end
  end

  def destroy
    @user.delete
		render json: { message: "User deleted."}
  end

  private
  def set_user
		@user = User.find_by_id(params[:id])
	end

  def user_params
		params.require(:user).permit(:name, :email, :password, :phone1, :phone2, :address_line1, :address_line2, :city, :state, :zip, :elevator_pitch, :resume, :twitter_url, :linkedin_url, :github_url, :learn_student_profile_url, :blog_site_url, :portfolio_site_url, :coach_name, :coach_email, :coach_slack)
  end
end

