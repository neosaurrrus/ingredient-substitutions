class User < ApplicationRecord
    has_secure_password
    has_many :ingredients, :through =>:substitutions
    has_many :substitutions
end
