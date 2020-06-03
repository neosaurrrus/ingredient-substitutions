class User < ApplicationRecord
    has_secure_password
    validates_confirmation_of :password
    validates :password, length: { in: 6..20 }
    validates :username, uniqueness: true
    validates :username, length: { in: 3..20}
    has_many :ingredients, :through =>:substitutions
    has_many :substitutions
    has_many :authorizations
end
