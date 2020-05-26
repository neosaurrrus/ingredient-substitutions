class Category < ApplicationRecord
    has_many :ingredients
    has_many :substitutions, :through => :ingredients
end
