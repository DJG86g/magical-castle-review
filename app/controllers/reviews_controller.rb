class ReviewsController < ApplicationController

  def show
    @id = params[:id]
  end

  def new
    @ride = Ride.find(params[:ride_id])
    @review = Review.new
    @user = current_user
  end

  def create
    @ride = Ride.find(params[:ride_id])
    @review = Review.new(review_params)
    @review.ride = @ride
    @review.user_id = current_user.id

    if @review.save
      flash[:notice] = "Review added successfully"
       redirect_to @ride
    else
      render action: "new"
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :rating, :user_id, :ride_id)

  end

end
