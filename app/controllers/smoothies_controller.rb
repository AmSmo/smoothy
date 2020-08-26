class SmoothiesController < ApplicationController


    def index
        @smoothies = Smoothy.all
    end

    def show
        @smoothy = Smoothy.find(params[:id])
    end

    def new
        @smoothy = Smoothy.new
    end

    def create
        @smoothy = Smoothy.new
        @smoothy.update!(smoothy_params(:name))
        redirect_to smoothy_path(@smoothy)
    end

    def edit

    end

    def update

    end

    private

    def smoothy_params(*args)
        params.require(:smoothy).permit(*args)
    end

end
