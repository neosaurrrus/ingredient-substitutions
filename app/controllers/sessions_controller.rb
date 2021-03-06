class SessionsController < ApplicationController
  def new
  end

  def create
    # Omniauth Login
    if auth = request.env['omniauth.auth']
      if @authorization = Authorization.find_by_provider_and_uid(auth["provider"], auth["uid"])
        @user = @authorization.user
      else
        @user = User.new(username:auth["info"]["name"], password:rand(100000000000...100000000000000000000).to_s)
        @user.authorizations.build :provider => auth["provider"], :uid => auth["uid"]
        @user.save
      end
     # Regular user login   
    else
      @user = User.find_by(username: params[:username])
      @user = @user.try(:authenticate, params[:password])
      return redirect_to new_session_url, alert: "Incorrect username and/or password" unless @user
    end

    session[:user_id] = @user.id 
    redirect_to user_url(@user), notice: "You have sucessfully logged on"
  end

  def destroy
    if session[:user_id] 
      session.delete :user_id 
    end
    redirect_to welcome_url, notice: "You have sucessfully logged out"
  end
end
