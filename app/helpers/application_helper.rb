module ApplicationHelper
    def belongs_to_current_user(instance)
        if instance.user_id == current_user.id
            return true
        else
            return false
        end
    end

    def test_helper
        "hello i am a helper"
    end
end
