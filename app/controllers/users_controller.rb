class UsersController < ApplicationController

	def new
		@user = User.new
	end


  def create
    @user = User.new
    @user.name = user_params[:name]
    @user.password = user_params[:password]
    if password_good && @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to new_user_path
    end
  end






	private

	def user_params
		params.require(:user).permit(:name, :password, :password_confirmation)
	end

	def password_good
    	user_params[:password] == user_params[:password_confirmation]
  	end

end