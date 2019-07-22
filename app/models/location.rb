class Location < ApplicationRecord
    has_many :photographers
    validates :name, presence: true, uniqueness: true
end
