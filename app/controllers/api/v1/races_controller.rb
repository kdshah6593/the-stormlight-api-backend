class Api::V1::RacesController < ApplicationController

    def index
        @races = Race.all
        render json: RaceSerializer.new(@races)
    end

    def create
        
    end

    def show
        @race = Race.find_by(id: params[:id])
        render json: RaceSerializer.new(@race)
    end

    def edit

    end

    def update

    end
end
