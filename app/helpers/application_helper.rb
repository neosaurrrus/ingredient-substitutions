module ApplicationHelper
  

    

    def belongs_to_current_user(instance)
        if instance.user_id == current_user.id
            return true
        else
            return false
        end
    end
end
