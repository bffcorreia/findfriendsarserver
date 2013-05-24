class Api::V1::PointOfInterestsController < ApplicationController
  respond_to :json

  def index
      @poi = PointOfInterest.user_friends_poi(params[:point_of_interest][:facebook_id])
      resposta = {:layer => "findfriendsar",:hotspots => @poi, :errorCode => 0, :errorString => ""}
      respond_with resposta
  end

  def show
    respond_with PointOfInterest.find(params[:id])
  end

  def create
    respond_with PointOfInterest.create(params[:point_of_interest])
  end

  def update
    respond_with PointOfInterest.update(params[:id], params[:point_of_interest])
  end

  def destroy
    respond_with PointOfInterest.destroy(params[:id])
  end
end