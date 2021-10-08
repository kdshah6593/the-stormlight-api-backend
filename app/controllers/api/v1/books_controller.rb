class Api::V1::BooksController < ApplicationController
    before_action :authenticate_api_v1_user!
    
    def index
        @books = Book.all
        render json: BookSerializer.new(@books)
    end

    def create
        
    end

    def show
        @book = Book.find_by(id: params[:id])
        render json: BookSerializer.new(@book)
    end

    def edit

    end

    def update

    end
end
