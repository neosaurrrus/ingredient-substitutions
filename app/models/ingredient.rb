class Ingredient < ApplicationRecord
    has_many(:substitutions, :foreign_key => :original_id, :dependent => :destroy)
    has_many(:reverse_substitutions,:class_name => :Substitution, :foreign_key => :sub_id, :dependent => :destroy)
    has_many :ingredients, :through => :substitutions, :source => :sub 
    belongs_to :category
    belongs_to :user
end
