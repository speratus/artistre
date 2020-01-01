module ArtistsHelper
    def next_session(artist)
       val = get_future_sessions(artist.sessions)
       val.order('appointment asc').first

    end

    private

    def get_future_sessions(sessions)
        sessions.where("appointment > ?", DateTime.now )
    end

end
