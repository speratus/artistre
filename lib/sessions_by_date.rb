module SessionsByDate

    def get_future_sessions(sessions)
        sessions.where("appointment > ?", DateTime.now )
    end

    def get_past_sessions(sessions)
        sessions.where("appointment < ?", DateTime.now)
    end

end