class ParksController <ApplicationController

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
end
