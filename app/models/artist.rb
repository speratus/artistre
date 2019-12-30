class Artist < ApplicationRecord
    has_many :sessions
    has_many :studios, through: :sessions 

    validates :name, :user_name, presence: true
    validates :user_name, uniqueness: true
    
end
