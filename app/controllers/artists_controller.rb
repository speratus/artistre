class ArtistsController < ApplicationController
    before_action :select_artist, only: [:show, :edit, :update]
    
    def new
        @artist = Artist.new
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
        if @artist.update(artist_params)
            redirect_to (@artist)
        else
            render 'edit'
        end
    end

    private

    def select_artist
        if session[:artist_id] == nil
            redirect_to login_path
            return
        end
            @artist = Artist.find_by(id: params[:id])

        if @artist.id != session[:artist_id]
            redirect_to artist_path(session[:artist_id])
        end
    end

    def artist_params
        params.require(:artist).permit(:name, :user_name, :password, :password_confirmation, :hometown)
    end
end
