require 'sessions_by_date'

module StudiosHelper
    include SessionsByDate
    
    def top_artist(studio)
        hash = {}
        temp = studio.sessions
        temp.each{|ssn| hash[ssn.artist] ? hash[ssn.artist]+= 1 : hash[ssn.artist] = 1}
        hash.max_by{|x, y| y }[0]
    end
end
