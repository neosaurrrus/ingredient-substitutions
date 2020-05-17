class User < ApplicationRecord
    has_many :ingredients, :through =>:substitutions
    has_many :substitutions
end
