class PointOfInterest < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :footnote, :imageURL, :lat, :lon, :title, :anchor, :facebook_id, :user_id
  
  def self.user_friends_poi(facebook_id)
    a = Array.new
    user = User.find_by_facebook_id(facebook_id)
    user.friends.map {|friend| friend.point_of_interests.map{|poi| a << poi}}
    a
  end
  def as_json(options={})
      {
        :id => id,
        :anchor => { :geolocation => { :lat => lat , :lon =>lon} },
        :text => { :title => title, :desciption => description, :footnote => footnote},
        :imageURL => imageURL,
        :icon => { :url => imageURL, :type => 2}
      }
  end
end
