class LoginsController < ApplicationController
    
    def new
        render 'new'
    end

    def create
        artist = Artist.find_by(user_name: login_params[:user_name])
        authenticated = artist.try(:authenticate, login_params[:password])
        
        if !authenticated
            flash[:error] = "Username or Password incorrect. "
            redirect_to '/login'
            return
        end

        session[:artist_id] = artist.id
    end

    private

    def login_params
        params.permit(:user_name, :password)
    end
end
