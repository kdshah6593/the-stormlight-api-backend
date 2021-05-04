class Api::V1::RacesController < ApplicationController

    def index
        @races = Race.all
        render json: @races
    end

    def show

    end

    def edit

    end

    def update

    end
end
