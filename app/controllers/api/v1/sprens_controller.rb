class Api::V1::SprensController < ApplicationController

    def index
        @sprens = Spren.all
        render json: SprenSerializer.new(@sprens)
    end

    def create
        
    end

    def show
        @spren = Spren.find_by(id: params[:id])
        render json: SprenSerializer.new(@spren)
    end

    def edit

    end

    def update

    end
end
