class Business < ApplicationRecord
    has_many :reviews 
    has_many :users, through: :reviews 

    validates :name, :city, :state, :zip_code, presence: true 
end
