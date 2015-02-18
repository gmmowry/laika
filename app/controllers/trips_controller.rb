class TripsController < ApplicationController
  respond_to :json

  def create
    @trip = Trip.create!(trip_params)

    render json: { status: true }
  end

  # def find_waypoint_attraction
  #   Attraction.where(latitude: @trip.map_waypoints.location.k && longitude: @trip.map_waypoints.location.D)
  # end

  private

  def trip_params
    params.require(:user).permit(:origin, :destination, :pitstop)
  end

end
