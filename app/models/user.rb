class User < ApplicationRecord
    has_many :reviews
    has_many :reviewed_photographers, through: :reviews, source: :photographer
    has_many :photographers

    validates :username, uniqueness: true,  presence: true
    validates :email, presence: true

    has_secure_password
end
