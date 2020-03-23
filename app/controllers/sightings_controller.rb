class SightingsController < ApplicationController
    # //Render sighting Object
    # def show
    #     sighting = Sighting.find_by(id: params[:id])
    #     render json: sighting
    #   end

    # To include bird and location information in this controller action, 
    # now that our models are connected, 
    # the most direct way would be to build a custom hash
    # def show
    #     sighting = Sighting.find_by(id: params[:id])
    #     render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
    #   end

    # An alternative is to use the include option to indicate what models you want to nest
      def show
        sighting = Sighting.find_by(id: params[:id])
        render json: sighting, include: [:bird, :location]
      end

      def index
        sightings = Sighting.all
        render json: sightings, include: [:bird, :location]
      end

end
