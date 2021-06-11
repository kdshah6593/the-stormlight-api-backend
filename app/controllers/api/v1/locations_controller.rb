class Api::V1::LocationsController < ApplicationController

    def index
        @locations = Location.all
        render json: @locations
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
