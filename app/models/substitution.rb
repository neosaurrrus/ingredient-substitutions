class Substitution < ApplicationRecord
    belongs_to :original, :class_name => :Ingredient
    belongs_to :sub, :class_name => :Ingredient
end
