class Api::V1::SurgeController < ApplicationController

    def index
        @surges = Surge.all
        render json: @surges
    end

    def show

    end

    def edit

    end

    def update

    end
end
