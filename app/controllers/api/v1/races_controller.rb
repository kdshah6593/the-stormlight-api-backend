class Api::V1::RacesController < ApplicationController

    def index
        @races = Race.all
        render json: RaceSerializer.new(@races)
    end

    def create
        
    end

    def show

    end

    def edit

    end

    def update

    end
end
