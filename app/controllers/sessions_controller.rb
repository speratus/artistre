class SessionsController < ApplicationController
    before_action :get_session, only: [:edit, :update, :delete]

    def new
        @session = Session.new
    end

    def create
        data = session_params
        data[:artist_id] = params[:artist_id]
        @session = Session.new(data)
        
        # byebug
        if @session.save
            redirect_to artist_session_path(id: @session.id)
        else
            render :new
        end
    end

    def show
        @session = Session.find_by(id: params[:id])
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def session_params
        params.require(:session).permit(:appointment, :studio_id)
    end

    def get_session
        @session = Session.find_by(id: params.require(:id))
        return head(:forbidden) unless @session.artist_id == session[:artist_id]
    end

end
