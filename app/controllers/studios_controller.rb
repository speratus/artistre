class StudiosController < ApplicationController
    def index
        @studios = Studio.all
    end

    def show
        @studio = Studio.find_by(id: params[:id])
    end

end
