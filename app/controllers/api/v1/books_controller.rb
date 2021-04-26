class Api::V1::BooksController < ApplicationController

    def index
        @books = Book.all
        render json: @books
    end

    def show

    end

    def edit

    end

    def update

    end
end
