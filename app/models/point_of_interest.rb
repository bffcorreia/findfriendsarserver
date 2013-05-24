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
  def as_json(options={})
      {
        :description => description,
        :footnote => footnote,
        :imageURL => imageURL,
        :title => title,
        :id => id,
        :anchor => { :geolocation => { :lat => lat , :lon =>lon} }
      }
  end
  
  private
    def add_user_id
      print "\nNo add_user_id com facebook_id = #{self.facebook_id}\n"
      self.user_id = User.find_by_facebook_id(self.facebook_id).id if self.facebook_id
    end
end
