class Api::V1::PointsOfInterestController < ApplicationController
  respond_to :json

  def create
    
    respond_with Frienship.create(params[:friendship])
  end

  def destroy
    respond_with PointOfInterest.destroy(params[:friendship])
  end
end