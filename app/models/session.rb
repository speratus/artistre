class Session < ApplicationRecord
    belongs_to :artists
    belongs_to :studios

    validates :appointment, :artist_id, :studio_id, presence: true
end
