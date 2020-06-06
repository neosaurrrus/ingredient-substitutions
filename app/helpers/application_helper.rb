module ApplicationHelper
  

    def require_logged_in
        return redirect_to new_session_url unless current_user
    end

    def current_user
        User.find_by(id:session[:user_id])
    end

    def belongs_to_current_user(instance)
        if instance.user_id == current_user.id
            return true
        else
            return false
        end
    end
end
