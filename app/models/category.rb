class Category < ApplicationRecord
    #scopes
    scope :ordered_by_name, -> { order(name: :asc) }
    #associations
    validates :name, length: { minimum: 3}
    validates :description, length: { minimum: 10}
    has_many :ingredients
    has_many :substitutions, :through => :ingredients
end
