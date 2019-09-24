class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
 
    if @user.save
      redirect_to '/'
    else
      render '/signup'
    end
  end

  def edit
    @user = current_user
  end

  def update
    if current_user.update user_params
      redirect_to '/'
      # do something
    else
      render :edit
    end
  end

  private
  	def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password)
  	end


end
