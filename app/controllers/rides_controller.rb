class RidesController < ApplicationController

  def index
    @rides = Ride.all
  end

  def new
    @park = Park.find(params[:park_id])
    @ride = Ride.new
  end

  def create
    @park = Park.find(params[:park_id])
    @ride = Ride.new(ride_params)
    @ride.park = @park



    if @ride.save
      flash[:notice] = "Ride added successfully"
       redirect_to @park
    else
      render action: "new"
    end
  end

  def show
    @ride = Ride.find(params[:id])
    @reviews = @ride.reviews
  end

  private

  def ride_params
    params.require(:ride).permit(:name, :description)

  end
end
