class AmusmentParksController < ApplicationController
  def show
    @amusment_park = AmusmentPark.find(params[:id])
  end
end
