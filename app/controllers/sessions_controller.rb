class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])

    @user = @user.try(:authenticate, params[:password])
    return redirect_to(controller: 'sessions', action: 'new') unless @user
    session[:user_id] = @user.id
    redirect_to @user
  end

  def destroy
    if session[:user_id] 
      session.delete :user_id
  end
  end
end
