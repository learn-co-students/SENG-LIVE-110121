class Review < ApplicationRecord
    belongs_to :business 
    belongs_to :user 

    validates :content, presence: true
end
