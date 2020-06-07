module ApplicationHelper
  
    def belongs_to_current_user(instance)
        instance.user_id == current_user.id
    end
end
