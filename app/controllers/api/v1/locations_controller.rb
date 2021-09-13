class Api::V1::LocationsController < ApplicationController

    def index
        @locations = Location.all
        render json: LocationSerializer.new(@locations)
    end

    def create
        
    end

    def show
        @location = Location.find_by(id: params[:id])
        render json: LocationSerializer.new(@location)
    end

    def edit

    end

    def update

    end
end
