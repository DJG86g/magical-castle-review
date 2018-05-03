class ParksController <ApplicationController
  before_action :authorize_user, except: [:index, :new, :create, :show]

  def index
    @parks = Park.all
  end

  def new
    @park = Park.new
  end

  def create
    @park = Park.new(park_params)

    if @park.save
      flash[:notice] = "Park added successfully"
      redirect_to @park
    else
      render action: "new"
    end
  end

  def show
    @park = Park.find(params[:id])
    @rides = @park.rides
  end

  private

  def park_params
    params.require(:park).permit(:name, :address, :city, :state, :zip, :description)
  end

  def authorize_user
    if !user_signed_in?
      raise ActionController::RoutingError.new("You are not authorized to do that!")
    end
  end
end
