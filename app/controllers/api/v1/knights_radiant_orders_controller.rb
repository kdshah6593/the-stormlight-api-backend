class Api::V1::KnightsRadiantOrdersController < ApplicationController
    
    def index
        @knightsRadiantOrders = KnightsRadiantOrder.all
        render json: @knightsRadiantOrders
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
