class LocationController < ApplicationController
  def index
  	def index
	    @events = Event.all
	    @hash = Gmaps4rails.build_markers(@events) do |event, marker|
	      marker.lat event.latitude
	      marker.lng event.longitude
	    end
	  end
  end
end
