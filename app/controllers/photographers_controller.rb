class PhotographersController < ApplicationController

    def new
        @photographer = Photographer.new
        @photographer.build_location
    end
    
    def create
        @photographer = Photographer.new(photo_params)
        @photographer.user_id = session[:user_id]
        if @photographer.save
            redirect_to photographer_path(@photographer)
        else 
            render :new
        end 
      end 

    private 

    def photo_params
        params.require(:photographer).permit(:name, :style, :price, :location_id, location_attributes:[:city, :state, :zipcode, :relocate])
    end 
end
