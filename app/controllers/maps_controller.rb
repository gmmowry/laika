class MapsController < ApplicationController

  respond_to :json

  def index
  end

  def search
    geometry = params['features'][0]['geometry']
    if current_user
      interests = current_user.interests
      @attractions = Attraction.search_within(geometry, interests)
    else
      @attractions = Attraction.search_within(geometry)
    end
    render json: { attractions: @attractions }
  end

  def directions
  end

end
