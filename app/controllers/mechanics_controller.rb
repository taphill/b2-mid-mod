class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
  end

  def show
    @mechanic = Mechanic.find(params[:id])
  end

  def create
    ride_mechanic = RideMechanic.new(mechanic_id: params[:id], ride_id: mechanic_params[:ride_id])

    if Ride.exists?(id: mechanic_params[:ride_id])
      ride_mechanic.save
      redirect_to "/mechanics/#{params[:id]}"
    else
      flash[:error] = 'Please enter an existing ride id'
      return redirect_to "/mechanics/#{params[:id]}"
    end
  end

  private

  def mechanic_params
    params.permit(:ride_id)
  end
end
