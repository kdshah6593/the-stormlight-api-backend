class Api::V1::SprenController < ApplicationController

    def index
        @sprens = Spren.all
        render json: @sprens
    end

    def show

    end

    def edit

    end

    def update

    end
end
