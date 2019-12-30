class Studio < ApplicationRecord
    has_many :sessions
    has_many :artists, through: :sessions 

    validates :name, :location, presence: true
end
