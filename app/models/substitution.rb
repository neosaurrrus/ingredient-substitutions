class Substitution < ApplicationRecord
    belongs_to :original, :class_name => :Ingredient
    belongs_to :sub, :class_name => :Ingredient
    belongs_to :user

    def display
        "<h3> <%= self.description%></h3>"
    end

    def original_ingredient
        Ingredient.find(self.original_id)
    end

    def sub_ingredient
        Ingredient.find(self.sub_id)
    end

    def user
        User.find(self.user_id)
    end
end
