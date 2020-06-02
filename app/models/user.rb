class User < ApplicationRecord
    has_secure_password
    validates_confirmation_of :password
    
    has_many :ingredients, :through =>:substitutions
    has_many :substitutions
    has_many :authorizations
end
