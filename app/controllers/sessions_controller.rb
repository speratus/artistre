class SessionsController < ApplicationController
    before_action :get_session, only: [:edit, :update, :destroy]

    def new
        @session = Session.new
    end

    def create
        data = session_params
        data[:artist_id] = params[:artist_id]
        @session = Session.new(data)
        appt_date = @session.appointment
        @session.appointment = appt_date.beginning_of_hour
        
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
        data = session_params
        data[:artist_id] = params[:artist_id]
        if @session.update(data)
            @session.save
            redirect_to artist_session_path(id: @session.id)
        else
            render :edit
        end
    end

    def destroy
        @session.destroy 
        redirect_to artist_path(session[:artist_id])
    end

    private

    def session_params
        params.require(:session).permit(:appointment, :studio_id)
    end

    def get_session
        @session = Session.find_by(id: params.require(:id))
        unless @session.artist_id == session[:artist_id]
            redirect_to session[:previous_page]
        end
    end

end
