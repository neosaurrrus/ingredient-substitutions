class ApplicationController < ActionController::Base
   
    def welcome
    end

    def require_logged_in
        return redirect_to(controller: 'sessions', action: 'new') unless current_user
    end

    def current_user
        User.find_by(id:session[:user_id])
    end
end
