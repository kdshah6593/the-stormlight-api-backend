class Api::V1::EssenceController < ApplicationController

    def index
        @essences = Essence.all
        render json: @essences
    end

    def show

    end

    def edit

    end

    def update

    end
end
