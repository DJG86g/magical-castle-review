class Api::V1::ReviewsController < ApiController
  def show
    @reviews = Review.find(params[:ride_id])
    render json: @reviews
  end

  def index
    @reviews = Review.find(params[:ride_id])
    render json: @reviews
  end
end
