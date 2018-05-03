class Api::RidesController < ApiController
  def show
    render json: { ride: Ride.all }
  end

  def index
    render json: {ride: Ride.all }
  end
end
