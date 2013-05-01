class Api::V1::PointsOfInterestController < ApplicationController
  respond_to :json

  def index
    respond_with PointOfInterest.all
  end

  def show
    respond_with PointOfInterest.find(params[:id])
  end

  def create
    respond_with PointOfInterest.create(params[:product])
  end

  def update
    respond_with PointOfInterest.update(params[:id], params[:product])
  end

  def destroy
    respond_with PointOfInterest.destroy(params[:id])
  end
end