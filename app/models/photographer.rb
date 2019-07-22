class Photographer < ApplicationRecord
  belongs_to :location
  belongs_to :user 
  has_many :reviews
  has_many :users, through: :reviews
  accepts_nested_attributes_for :location

end 

 
