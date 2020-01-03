require 'sessions_by_date'

module ArtistsHelper
    include SessionsByDate

    def next_session(artist)
       val = get_future_sessions(artist.sessions)
       val.order('appointment asc').first

    end

    

end
