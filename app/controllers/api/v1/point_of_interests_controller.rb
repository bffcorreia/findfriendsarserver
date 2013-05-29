class Api::V1::PointOfInterestsController < ApplicationController
  respond_to :json

  def index
      if(params[:facebook_id])
        @poi = PointOfInterest.user_friends_poi(params[:point_of_interest][:facebook_id])
      else
        @poi = PointOfInterest.all
      end
      resposta = "poi" => {:layer => "findfriendsar",:hotspots => @poi, :errorCode => 0, :errorString => "ok"}
      respond_with resposta
  end

  def show
    respond_with PointOfInterest.find(params[:id])
  end

  def create
    PointOfInterest.create(params[:point_of_interest])
    render :status => 200,
           :json => { :success => true,
                      :info => "point_of_interest created"}
  end

  def update
    respond_with PointOfInterest.update(params[:id], params[:point_of_interest])
  end

  def destroy
    respond_with PointOfInterest.destroy(params[:id])
  end
end