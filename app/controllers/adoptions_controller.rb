class AdoptionsController < ApplicationController

    def index
        @adoptions = Adoption.all
    end

    def show
        @adoption = Adoption.find(params[:id])
    end

    def new
        @adoption = Adoption.new
        @animal = Animal.find(params[:adoption][:animal_id])
    end

    def create
        @adoption = Adoption.new(animal_id: params[:adoption][:animal_id], person_id: params[:adoption][:person_id])
        @adoption.animal.change_adopt_status
        @adoption.animal.save
        
        if @adoption.save
            redirect_to animals_path
        else
            render new_adoption_path 
        end
    end


    def adoption_params
        params.require(:adoption).permit!
    end
end 
