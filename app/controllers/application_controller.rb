class ApplicationController < ActionController::Base
    # before_action :last_visited
    after_action :previous_page

    def last_visited
        @last_page = 
        byebug
        session[:current_page] = request.original_fullpath
        byebug
    end

    def previous_page
        unless @performed_redirect
            session[:previous_page] = request.original_fullpath
        end
    end
end
