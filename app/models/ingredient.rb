class Ingredient < ApplicationRecord
    alias_attribute :name_original, :name
    alias_attribute :name_sub, :name
    alias_attribute :description_original, :description
    alias_attribute :description_sub, :description
    alias_attribute :vegan_original, :vegan
    alias_attribute :vegan_sub, :vegan
    alias_attribute :vegetarian_original, :vegetarian
    alias_attribute :vegetarian_sub, :vegetarian 
    alias_attribute :category_id_original, :category_id
    alias_attribute :category_id_sub, :category_id



    has_many(:substitutions, :foreign_key => :original_id, :dependent => :destroy)
    has_many(:reverse_substitutions,:class_name => :Substitution, :foreign_key => :sub_id, :dependent => :destroy)
    has_many :ingredients, :through => :substitutions, :source => :sub 
    belongs_to :category
    belongs_to :user
end
