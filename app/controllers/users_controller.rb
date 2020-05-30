class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to @user
  end
   
  def create_google
    binding.pry
    auth_hash = request.env['omniauth.auth']
    render :text => auth_hash.inspect
  end

  def failure_google
    binding.pry
  end

  def show
    @user = User.find_by(id:params[:id])
  end

    private
  
    def user_params
      params.require(:user).permit(:username,:password)
    end


end
