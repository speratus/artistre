class Artist < ApplicationRecord
    has_many :sessions
    has_many :studios, through: :sessions 
    has_secure_password 

    validates :name, :user_name, presence: true
    validates :user_name, uniqueness: true
    
end
