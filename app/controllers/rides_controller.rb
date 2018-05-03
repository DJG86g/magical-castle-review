class RidesController < ApplicationController
  before_action :authorize_user, except: [:index, :new, :create, :show]

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

  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy.id
    redirect_to park_path(@ride.park.id), notice: 'Ride successfully deleted.'
  end

  private

  def ride_params
    params.require(:ride).permit(:name, :description, :ride_photo)
  end 

  def authorize_user
    if !user_signed_in? || !current_user.superadmin_role
      raise ActionController::RoutingError.new("You are not authorized to do that!")
    end
  end
end
