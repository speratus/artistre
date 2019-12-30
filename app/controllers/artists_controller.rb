class ArtistsController < ApplicationController
    def new
        
    end

    def create
        @artist = Artist.new(artist_params)
        if @artist.valid?
            @artist.save
            session[:artist_id] = @artist.id
            redirect_to (@artist)
        else
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
    end

    private

    def select_artist
        @artist = Artist.find_by(id: session[:artist_id])
    end

    def artist_params
        params.require(:artist).permit(:name, :user_name, :password, :password_confirmation, :hometown)
    end
end
