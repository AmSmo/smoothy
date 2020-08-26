class IngredientsController < ApplicationController
    
    def index
        @ingredients = Ingredient.all
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.new
        @ingredient.update!(name: params[:ingredient][:name], smoothy: Smoothy.find_by(name: params[:ingredient][:smoothy])
        # :smoothy = Smoothy.find_by(name: params[:ingredient][:smoothy])
        byebug
        # @ingredient.save
        # @ingredient.update!(ingredient_params(:name, :smoothy))
    end

    private

    def ingredient_params(*args)
        params.require(:ingredient).permit(*args)
    end
end
