class SessionsController < ApplicationController
  def new
  end

  def create
    # Omniauth Login
    if auth = request.env['omniauth.auth']
      if @authorization = Authorization.find_by_provider_and_uid(auth["provider"], auth["uid"])
        @user = @authorization.user
      else
        @user = User.new(username:auth["info"]["name"], password:"rgrgagrareg")
        @user.authorizations.build :provider => auth["provider"], :uid => auth["uid"]
        @user.save
      end
     # Regular user login   
    else
      @user = User.find_by(username: params[:username])
      @user = @user.try(:authenticate, params[:password])
      return redirect_to(controller: 'sessions', action: 'new') unless @user
    end

    session[:user_id] = @user.id 
    redirect_to user_path(@user)
  end

  def destroy
    if session[:user_id] 
      session.delete :user_id 
    end
    redirect_to(controller: 'application', action: 'welcome')
  end
end
