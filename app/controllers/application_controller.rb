class ApplicationController < ActionController::Base
    after_action :previous_page

    def previous_page
        unless @performed_redirect
            session[:previous_page] = request.original_fullpath
        end
    end
end
