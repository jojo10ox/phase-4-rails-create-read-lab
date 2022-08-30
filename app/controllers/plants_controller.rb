class PlantsController < ApplicationController
    
    #get '/plants'
    def index
        render json: Plant.all
    end

    #GET '/plants/:id'
    def show
        plants = Plant.find_by(id: params[:id])
        render json: plants
    end

    def create
        plants = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plants, status: :created
    end
end
