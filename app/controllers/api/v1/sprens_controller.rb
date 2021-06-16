class Api::V1::SprensController < ApplicationController

    def index
        @sprens = Spren.all
        render json: SprenSerializer.new(@sprens)
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
