class Api::V1::CharactersController < ApplicationController

    def index
        @characters = Character.all
        render json: CharacterSerializer.new(@characters)
    end

    def show

    end

    def edit

    end

    def update

    end
end
