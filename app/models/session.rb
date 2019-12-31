class Session < ApplicationRecord
    belongs_to :artist
    belongs_to :studio

    validates :appointment, :artist_id, :studio_id, presence: true
    
    validate :future_year
    validate :appt_unique

    def appt_unique
        if Session.find_by(appointment: appointment, studio_id: studio_id)
            errors[:appointment] << 'There is an already an appointment at that time.'
        end
    end

    def future_year
        if appointment.year < Time.now.year
            errors[:appointment] << 'You must make an appointment that is for this year or a future year.'
        end
    end

    def show_date_and_time
        "#{appointment.strftime("%B %d, %Y at %I %p")} - #{self.studio.name}"
    end
end
