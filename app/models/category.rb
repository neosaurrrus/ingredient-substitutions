class Category < ApplicationRecord
    validates :name, length: { minimum: 3}
    validates :description, length: { minimum: 10}
    has_many :ingredients
    has_many :substitutions, :through => :ingredients
end
