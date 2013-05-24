class PointOfInterest < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :footnote, :imageURL, :lat, :lon, :title, :anchor, :facebook_id, :user_id
  before_save :add_user_id  
  def self.user_friends_poi(facebook_id)
    a = Array.new
    user = User.find_by_facebook_id(facebook_id)
    user.friends.map {|friend| friend.point_of_interests.map{|poi| a << poi}}
    a
  end
  private
    def add_user_id
      self.user_id = User.find_by_facebook_id(self.facebook_id).id
    end
end
