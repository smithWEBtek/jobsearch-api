class Api::UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :create, :destroy]
 
  def index
		@users = User.all
		render json: @users
  end

  def show
    @user = User.find_by_id(params[:id])
    @todo = @user.todos.build
		render json: @user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:notice] = "Welcome, #{@user.username.upcase}! you have successfully signed up, please SIGN IN."
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user.update_without_password(user_params)
    if @user.save
      flash[:notice] = 'User Account updated.'
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    if @user.delete
      flash[:notice] = 'User deleted'
      redirect_to root_path
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to user_path(@user)
    end
  end

  private

  def set_user
		@user = User.find_by_id(params[:id])
	end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
