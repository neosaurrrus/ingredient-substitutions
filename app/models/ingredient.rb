class Ingredient < ApplicationRecord
     #scopes
     scope :ordered_by_name, -> { order(name: :asc) }
     #validations
    validates :name, length: { minimum: 3}
    validates :description, length: { minimum: 10}
    validates :category, presence: true
    validates :name, uniqueness: true
    #associations
    has_many(:substitutions, :foreign_key => :original_id, :dependent => :destroy)
    has_many(:reverse_substitutions,:class_name => :Substitution, :foreign_key => :sub_id, :dependent => :destroy)
    has_many :ingredients, :through => :substitutions, :source => :sub 
    belongs_to :category
    belongs_to :user
end
