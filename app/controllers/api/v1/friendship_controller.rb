class Api::V1::FriendshipController < ApplicationController
  respond_to :json

  def create
    user=User.find_by_facebook_id(params[:friendship][:facebook_id])
    
    if friend=User.find_by_facebook_id(params[:friendship][:friend_facebook_id])
      Friendship.create(:user_id => friend.id, :friend_id=>user.id)
      respond_with Friendship.create(:user_id => user.id, :friend_id=>friend.id)
    else
      respond_with render :json => {:msg => "error: no user with that facebook"}
    end
  end
  
end