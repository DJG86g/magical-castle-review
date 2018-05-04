class Api::V1::ReviewsController < ApiController
  def index
    @reviews = Review.where(ride_id: params[:ride_id])
    render json: @reviews
  end

  def show
    @reviews = Review.find(params[:ride_id])
    render json: @reviews
  end

end
