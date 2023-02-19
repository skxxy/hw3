class PlacesController < ApplicationController
    def index
        @places = Place.all
    end 

    def show
        @places = Place.find_by({"id" => params["id"]})
        @posts= Post.where({"place_id" => @places["id"]}) 
    end

    def new
        @places = Place.new
    end
    
    def create
        @places = Place.new
        @places["name"] = params["place"]["name"]
        @places.save
        redirect_to"/places"
    end

end
