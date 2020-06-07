class Category < ApplicationRecord
    #scopes
    scope :ordered_by_name, -> { order(name: :asc) }
    #associations
    has_many :ingredients
    has_many :substitutions, :through => :ingredients
end
